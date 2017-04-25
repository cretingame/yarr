library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


library work;
use work.ddr3_ctrl_pkg.all;

entity ddr3_ctrl_wb is
    generic (
        g_BYTE_ADDR_WIDTH : integer := 27;
        g_MASK_SIZE       : integer := 8;
        g_DATA_PORT_SIZE  : integer := 64
    );
    port (
        ----------------------------------------------------------------------------
        -- Reset input (active low)
        ----------------------------------------------------------------------------
        rst_n_i : in std_logic;

        ----------------------------------------------------------------------------
        -- Status
        ----------------------------------------------------------------------------

        ----------------------------------------------------------------------------
        -- DDR controller port
        ----------------------------------------------------------------------------
        
        ddr_addr_o                  : out    std_logic_vector(26 downto 0);
        ddr_cmd_o                   : out    std_logic_vector(2 downto 0);
        ddr_cmd_en_o                : out    std_logic;
        ddr_wdf_data_o              : out    std_logic_vector(255 downto 0);
        ddr_wdf_end_o               : out    std_logic;
        ddr_wdf_mask_o              : out    std_logic_vector(31 downto 0);
        ddr_wdf_wren_o              : out    std_logic;
        ddr_rd_data_i               : in   std_logic_vector(255 downto 0);
        ddr_rd_data_end_i           : in   std_logic;
        ddr_rd_data_valid_i         : in   std_logic;
        ddr_rdy_i                   : in   std_logic;
        ddr_wdf_rdy_i               : in   std_logic;
        --ddr_sr_req_o                : out    std_logic;
        --ddr_ref_req_o               : out    std_logic;
        --ddr_zq_req_o                : out    std_logic;
        --ddr_sr_active_i             : in   std_logic;
        --ddr_ref_ack_i               : in   std_logic;
        --ddr_zq_ack_i                : in   std_logic;
        ddr_ui_clk_i                  : in   std_logic;
        ddr_ui_clk_sync_rst           : in   std_logic;
        --ddr_init_calib_complete       : in   std_logic;

        ----------------------------------------------------------------------------
        -- Wishbone bus port
        ----------------------------------------------------------------------------
        wb_clk_i   : in  std_logic;
        wb_sel_i   : in  std_logic_vector(g_MASK_SIZE - 1 downto 0);
        wb_cyc_i   : in  std_logic;
        wb_stb_i   : in  std_logic;
        wb_we_i    : in  std_logic;
        wb_addr_i  : in  std_logic_vector(32 - 1 downto 0);
        wb_data_i  : in  std_logic_vector(g_DATA_PORT_SIZE - 1 downto 0);
        wb_data_o  : out std_logic_vector(g_DATA_PORT_SIZE - 1 downto 0);
        wb_ack_o   : out std_logic;
        wb_stall_o : out std_logic
    );
end entity ddr3_ctrl_wb;

architecture behavioral of ddr3_ctrl_wb is
    
    
    COMPONENT fifo_315x16
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(314 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(314 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
    
    COMPONENT fifo_27x16
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
    
    COMPONENT fifo_4x16
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
    
    COMPONENT fifo_256x16
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
    
    
    --------------------------------------
    -- Constants
    --------------------------------------
    --constant c_DDR_BURST_LENGTH : unsigned(5 downto 0) := TO_UNSIGNED(16, 6);
	--constant c_READ_STALL_ASSERT : unsigned(6 downto 0) := TO_UNSIGNED(54, 7);
	--constant c_READ_STALL_NEGATE : unsigned(6 downto 0) := TO_UNSIGNED(42, 7);
	--constant c_WRITE_STALL_ASSERT : unsigned(6 downto 0) := TO_UNSIGNED(52, 7);
	--constant c_WRITE_STALL_NEGATE : unsigned(6 downto 0) := TO_UNSIGNED(42, 7);
    --constant c_ADDR_SHIFT : integer := log2_ceil(g_DATA_PORT_SIZE/8);
    --constant c_STALL_TIME : unsigned(3 downto 0) := TO_UNSIGNED(15, 4);
    constant c_write_wait_time : unsigned(3 downto 0) := TO_UNSIGNED(5, 4);
    constant c_read_wait_time : unsigned(3 downto 0) := TO_UNSIGNED(5, 4);
    constant c_register_shift_size : integer := 4;

    --------------------------------------
    -- Signals
    --------------------------------------
    signal rst_s : std_logic;
    
    signal read_s : std_logic;
    signal write_s : std_logic;
    
    signal wb_wr_addr_s : std_logic_vector(26 downto 0);
    signal wb_wr_addr_d : std_logic_vector(26 downto 0);
    signal wb_wr_addr_row_current_s : std_logic;
    signal wb_wr_addr_row_s : std_logic_vector(3 downto 0);
    signal wb_wr_addr_row_a_s : std_logic_vector(2 downto 0);
    signal wb_wr_addr_row_b_s : std_logic_vector(2 downto 0);
    
    --signal wb_rd_addr_s : std_logic_vector(26 downto 0);
    
    type data_array is array (0 to 3) of std_logic_vector(g_DATA_PORT_SIZE - 1 downto 0);
    signal wb_wr_data_shift_a : data_array;
    type mask_array is array (0 to 3) of std_logic_vector(g_MASK_SIZE - 1 downto 0);
    signal wb_wr_mask_shift_a : mask_array;
    type addr_array is array (0 to 3) of std_logic_vector(g_BYTE_ADDR_WIDTH - 1 downto 0);
    signal wb_wr_addr_shift_a : addr_array;
    signal wb_wr_addr_ref_a : addr_array;
    signal fifo_wb_wr_mask_din_s : std_logic_vector(32 downto 0);
    signal fifo_wb_wr_addr_din_s : std_logic_vector(26 downto 0);
    signal fifo_wb_wr_din_s : std_logic_vector(314 downto 0);
    signal fifo_wb_wr_wr_s : std_logic;
    signal fifo_wb_wr_rd_s : std_logic;
    signal fifo_wb_wr_rd_d : std_logic;
    signal fifo_wb_wr_dout_s : std_logic_vector(314 downto 0);
    signal fifo_wb_wr_full_s : std_logic;
    signal fifo_wb_wr_empty_s : std_logic;
    
    
    
    signal fifo_wb_rd_addr_din_a : addr_array;
    
    signal fifo_wb_rd_addr_din_s : std_logic_vector(26 downto 0);
    signal fifo_wb_rd_addr_wr_s : std_logic;
    signal fifo_wb_rd_addr_rd_s : std_logic;
    signal fifo_wb_rd_addr_rd_d : std_logic;
    signal fifo_wb_rd_addr_dout_s : std_logic_vector(26 downto 0);
    signal fifo_wb_rd_addr_full_s : std_logic;
    signal fifo_wb_rd_addr_empty_s : std_logic;
    
    --signal fifo_wb_rd_mask_din_a : mask_array;
    --signal wb_rd_mask_din_s : std_logic_vector(3 downto 0);
    signal fifo_wb_rd_mask_din_s : std_logic_vector(3 downto 0);
    signal fifo_wb_rd_mask_wr_s : std_logic;
    signal fifo_wb_rd_mask_rd_s : std_logic;
    --signal fifo_wb_rd_addr_rd_d : std_logic;
    signal fifo_wb_rd_mask_dout_s : std_logic_vector(3 downto 0);
    signal fifo_wb_rd_mask_full_s : std_logic;
    signal fifo_wb_rd_mask_empty_s : std_logic;
    
    signal fifo_wb_rd_data_din_s : std_logic_vector(255 downto 0);
    signal fifo_wb_rd_data_wr_s : std_logic;
    signal fifo_wb_rd_data_rd_s : std_logic;
    --signal fifo_wb_rd_data_rd_d : std_logic;
    signal fifo_wb_rd_data_dout_s : std_logic_vector(255 downto 0);
    signal fifo_wb_rd_data_dout_a : data_array;
    signal fifo_wb_rd_data_full_s : std_logic;
    signal fifo_wb_rd_data_empty_s : std_logic;
    
    signal wb_rd_read_addr_rec_nb_s : unsigned(1 downto 0); -- received addresses number

    signal wb_stall_s   : std_logic;
    signal wb_stall_d : std_logic;
    signal wb_stall_dd : std_logic;
    signal wb_wr_ack_s : std_logic;
    signal wb_rd_ack_s : std_logic;

    --------------------------------------
    -- Counter
    --------------------------------------
    signal wb_write_cnt : integer range 0 to c_register_shift_size;
    signal wb_write_cnt_d : integer range 0 to c_register_shift_size;
    signal wb_write_wait_cnt : unsigned(3 downto 0);
    
    signal wb_read_cnt : integer range 0 to 3;
    signal wb_read_wait_cnt : unsigned(3 downto 0);
    signal wb_read_data_cnt : integer range 0 to 3;
    signal wb_read_data_cnt_d : integer range 0 to 3;
    
    signal wb_read_test : integer;
    
    
    
begin
    rst_s <= not rst_n_i;
    
    
    wb_ack_o <= wb_wr_ack_s or wb_rd_ack_s;
    

    
    --------------------------------------
    -- Wishbone write
    --------------------------------------
    p_wb_write : process (wb_clk_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            wb_write_cnt <= 0;
            wb_write_cnt_d <= 0;
            wb_write_wait_cnt <= c_write_wait_time;
            --fifo_wb_wr_addr_din_s <= (others => '0');
            wb_wr_addr_s <= (others => '0');
            for i in 0 to 3 loop
                wb_wr_addr_shift_a(i) <= (others => '1');
                wb_wr_data_shift_a(i) <= (others => '0');
                wb_wr_mask_shift_a(i) <= (others => '0');
            end loop;
            
            --fifo_wb_wr_wr_s <= '0';
            wb_wr_ack_s <= '0';
        elsif rising_edge(wb_clk_i) then

            wb_write_cnt_d <= wb_write_cnt;
            
            if (wb_cyc_i = '1' and wb_stb_i = '1' and wb_we_i = '1') then
                wb_wr_addr_s <= wb_addr_i(26 downto 0);
                wb_wr_addr_shift_a(c_register_shift_size-1) <= wb_addr_i(26 downto 0);
                wb_wr_data_shift_a(c_register_shift_size-1) <= wb_data_i;
                wb_wr_mask_shift_a(c_register_shift_size-1) <= wb_sel_i;
                
                for i in 0 to c_register_shift_size-2 loop
                    wb_wr_addr_shift_a(i) <= wb_wr_addr_shift_a(i+1);
                    wb_wr_data_shift_a(i) <= wb_wr_data_shift_a(i+1);
                    wb_wr_mask_shift_a(i) <= wb_wr_mask_shift_a(i+1);
                end loop;
                
                wb_wr_ack_s <= '1';

                if(wb_write_cnt >= c_register_shift_size) then
                    wb_write_cnt <= 1;
                    for i in 0 to 2 loop
                        wb_wr_addr_shift_a(i) <= (others => '1');
                        wb_wr_data_shift_a(i) <= (others => '1');
                        wb_wr_mask_shift_a(i) <= (others => '0');
                    end loop;
                else
                    wb_write_cnt <= wb_write_cnt + 1;
                    wb_write_wait_cnt <= c_write_wait_time;
                end if;

            else
                if(wb_write_cnt >= c_register_shift_size) then
                    wb_write_cnt <= 0;
                    for i in 0 to 3 loop
                        wb_wr_addr_shift_a(i) <= (others => '1');
                        wb_wr_data_shift_a(i) <= (others => '1');
                        wb_wr_mask_shift_a(i) <= (others => '0');
                    end loop;
                end if; 
                 wb_wr_ack_s <= '0';
                 if(wb_write_cnt /= 0) then
                     wb_write_wait_cnt <= wb_write_wait_cnt - 1;
                     if (wb_write_wait_cnt = 0) then
                         wb_write_cnt <= 0;
                         for i in 0 to 3 loop
                             wb_wr_addr_shift_a(i) <= (others => '1');
                             wb_wr_data_shift_a(i) <= (others => '1');
                             wb_wr_mask_shift_a(i) <= (others => '0');
                         end loop;
                         wb_write_wait_cnt <= c_write_wait_time; 
                     end if;
                 end if;
                 
                 
            end if;
            
                        
            
            
            
        end if;
        
        
        
    end process p_wb_write;
    
    p_wb_write_rtl : process (wb_write_cnt,wb_write_wait_cnt,wb_wr_addr_shift_a)
    begin
        if (wb_write_cnt = 4 or wb_write_wait_cnt = 0) then
            fifo_wb_wr_wr_s <= '1';
        else
            fifo_wb_wr_wr_s <= '0';
        end if;
        
        for i in 0 to (c_register_shift_size-1) loop
            wb_wr_addr_ref_a(i) <= std_logic_vector(unsigned(wb_wr_addr_shift_a(i)) + (c_register_shift_size-1) - i);
        end loop;
    
    end process p_wb_write_rtl;
    
    
    
    p_wb_write_address_row : process(wb_wr_addr_ref_a,wb_wr_addr_row_a_s,wb_wr_addr_row_b_s)
    begin
        wb_wr_addr_row_b_s(2) <= wb_wr_addr_row_a_s(2);
        for i in 0 to 2 loop
            if wb_wr_addr_ref_a(i) = wb_wr_addr_ref_a(i+1) then
                wb_wr_addr_row_a_s(i) <= '1';
            else
                wb_wr_addr_row_a_s(i) <= '0';
            end if;
            
            
        end loop;
        
        for i in 0 to 1 loop
            wb_wr_addr_row_b_s(i) <= wb_wr_addr_row_b_s(i+1) and wb_wr_addr_row_a_s(i);
        end loop;
        
        wb_wr_addr_row_s(3) <= '1';
        
        for i in 0 to 2 loop
            wb_wr_addr_row_s(i) <= wb_wr_addr_row_b_s(i);
        end loop;
        
    end process p_wb_write_address_row;
    
    wb_wr_addr_row_current_s <= wb_wr_addr_row_s(c_register_shift_size - wb_write_cnt) when wb_write_cnt /= 0 else
                               '0';
    
    fifo_wb_wr_addr_din_s <= wb_wr_addr_ref_a(c_register_shift_size - wb_write_cnt) when wb_write_cnt /= 0 else
                             (others => '1');
    
    fifo_wb_wr_din_s <= fifo_wb_wr_addr_din_s &
                        wb_wr_mask_shift_a(3) & 
                        wb_wr_mask_shift_a(2) & 
                        wb_wr_mask_shift_a(1) & 
                        wb_wr_mask_shift_a(0) &
                        wb_wr_data_shift_a(3) & 
                        wb_wr_data_shift_a(2) & 
                        wb_wr_data_shift_a(1) & 
                        wb_wr_data_shift_a(0); 
    
    fifo_wb_write : fifo_315x16
    PORT MAP (
        rst => rst_s,
        wr_clk => wb_clk_i,
        rd_clk => ddr_ui_clk_i,
        din => fifo_wb_wr_din_s,
        wr_en => fifo_wb_wr_wr_s,
        rd_en => fifo_wb_wr_rd_s,
        dout => fifo_wb_wr_dout_s,
        full => fifo_wb_wr_full_s,
        empty => fifo_wb_wr_empty_s
    );
    

    ddr_wdf_data_o <= fifo_wb_wr_dout_s(255 downto 0);
    ddr_wdf_wren_o <= fifo_wb_wr_rd_d;
    ddr_wdf_end_o  <= fifo_wb_wr_rd_d;
    ddr_wdf_mask_o <= fifo_wb_wr_dout_s(287 downto 256);
    
    
    

    --------------------------------------
    -- Wishbone read
    --------------------------------------

    p_wb_read : process (wb_clk_i, rst_n_i)
        
    begin
    if (rst_n_i = '0') then
        wb_read_test <= 0;
        wb_read_cnt <= 0;
        wb_read_wait_cnt <= c_read_wait_time;
        fifo_wb_rd_addr_wr_s <= '0';
        fifo_wb_rd_mask_wr_s <= '0';
        wb_rd_read_addr_rec_nb_s <= TO_UNSIGNED(0,2);
        for i in 0 to 3 loop
            fifo_wb_rd_addr_din_a(i) <= (others => '0');
            --fifo_wb_rd_mask_din_a(i) <= (others => '0');
        end loop;
    elsif rising_edge(wb_clk_i) then
        if (wb_cyc_i = '1' and wb_stb_i = '1' and wb_we_i = '0') then
            wb_read_test <= 1;
            fifo_wb_rd_addr_din_a(wb_read_cnt) <= wb_addr_i(26 downto 0);
            --fifo_wb_rd_mask_din_a(wb_read_cnt) <= wb_sel_i;
            if (wb_read_cnt >= 3) then
                wb_read_test <= 2;
                wb_read_cnt <= 0; -- Counter
                wb_rd_read_addr_rec_nb_s <= TO_UNSIGNED(3,2);
                fifo_wb_rd_addr_wr_s <= '1';
                fifo_wb_rd_mask_wr_s <= '1';
            else
                wb_read_test <= 3;
                wb_read_cnt <= wb_read_cnt + 1;
                wb_read_wait_cnt <= c_read_wait_time;
                fifo_wb_rd_addr_wr_s <= '0';
                fifo_wb_rd_mask_wr_s <= '0';
            end if;
        else
             wb_read_test <= 4;
             fifo_wb_rd_addr_wr_s <= '0';
             fifo_wb_rd_mask_wr_s <= '0';
             if wb_read_cnt /= 0 then
                wb_read_wait_cnt <= wb_read_wait_cnt - 1;
                wb_read_test <= 5;
                if wb_read_wait_cnt = 0 then
                    wb_read_test <= 6;
                    wb_rd_read_addr_rec_nb_s <= TO_UNSIGNED(wb_read_cnt-1,2);
                    wb_read_cnt <= 0;
                    fifo_wb_rd_addr_wr_s <= '1'; 
                    fifo_wb_rd_mask_wr_s <= '1';      
                end if;   
             end if;
        end if;
    end if;
    end process p_wb_read;
    
    p_wb_read_data : process(wb_clk_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            wb_read_data_cnt <= 3;
            wb_read_data_cnt_d <= 3;
        elsif rising_edge(wb_clk_i) then
            wb_read_data_cnt_d <= wb_read_data_cnt;
            if fifo_wb_rd_data_rd_s = '1' then
                wb_read_data_cnt <= 0;
            end if;
            
            if wb_read_data_cnt /= 3 then
                wb_read_data_cnt <= wb_read_data_cnt + 1; -- Counter
            end if;
        end if;
    end process p_wb_read_data;
    
    
    
    fifo_wb_rd_addr_din_s <= std_logic_vector(unsigned(fifo_wb_rd_addr_din_a(TO_INTEGER(wb_rd_read_addr_rec_nb_s))) + 3 - wb_rd_read_addr_rec_nb_s);
    fifo_wb_rd_mask_din_s <= "1111" when wb_rd_read_addr_rec_nb_s = TO_UNSIGNED(3,2) else
                             "0111" when wb_rd_read_addr_rec_nb_s = TO_UNSIGNED(2,2) else
                             "0011" when wb_rd_read_addr_rec_nb_s = TO_UNSIGNED(1,2) else
                             "0001" when wb_rd_read_addr_rec_nb_s = TO_UNSIGNED(0,2);
    --- TODO fifo_wb_rd_mask_din_s <= fifo_wb_rd_mask_din_a(TO_INTEGER(wb_rd_read_addr_rec_nb_s));
    
    fifo_wb_rd_data_rd_s <= not fifo_wb_rd_data_empty_s and not fifo_wb_rd_mask_empty_s;
    fifo_wb_rd_mask_rd_s <= not fifo_wb_rd_mask_empty_s and not fifo_wb_rd_data_empty_s;
    
    wb_rd_ack_s <= fifo_wb_rd_mask_dout_s(wb_read_data_cnt) when wb_read_data_cnt /= 3 or wb_read_data_cnt_d /=3 else 
                   '0'; 
    
    fifo_wb_rd_data_dout_g: for i in 0 to 3 generate
    begin
        fifo_wb_rd_data_dout_a(i) <= fifo_wb_rd_data_dout_s(63+i*64 downto 0+i*64);
    end generate;
    wb_data_o <= fifo_wb_rd_data_dout_a(wb_read_data_cnt);
    
    fifo_wb_read_addr : fifo_27x16
      PORT MAP (
        rst => rst_s,
        wr_clk => wb_clk_i,
        rd_clk => ddr_ui_clk_i,
        din => fifo_wb_rd_addr_din_s,
        wr_en => fifo_wb_rd_addr_wr_s,
        rd_en => fifo_wb_rd_addr_rd_s,
        dout => fifo_wb_rd_addr_dout_s,
        full => fifo_wb_rd_addr_full_s,
        empty => fifo_wb_rd_addr_empty_s
      );
    
    fifo_wb_read_mask : fifo_4x16
        PORT MAP (
          rst => rst_s,
          wr_clk => wb_clk_i,
          rd_clk => wb_clk_i,
          din => fifo_wb_rd_mask_din_s,
          wr_en => fifo_wb_rd_mask_wr_s,
          rd_en => fifo_wb_rd_mask_rd_s,
          dout => fifo_wb_rd_mask_dout_s,
          full => fifo_wb_rd_mask_full_s,
          empty => fifo_wb_rd_mask_empty_s
        );
    
    fifo_wb_read_data : fifo_256x16
        PORT MAP (
          rst => rst_s,
          wr_clk => ddr_ui_clk_i,
          rd_clk => wb_clk_i,
          din => fifo_wb_rd_data_din_s,
          wr_en => fifo_wb_rd_data_wr_s,
          rd_en => fifo_wb_rd_data_rd_s,
          dout => fifo_wb_rd_data_dout_s,
          full => fifo_wb_rd_data_full_s,
          empty => fifo_wb_rd_data_empty_s
        );    
    
    --------------------------------------
    -- Arbiter
    --------------------------------------
    
    ddr_addr_o <= fifo_wb_wr_dout_s(314 downto 288) when fifo_wb_wr_rd_d = '1' else
                  fifo_wb_rd_addr_dout_s;
                  
    ddr_cmd_o <= "001" when  fifo_wb_wr_rd_d = '1' else
                               "000";
                               
    ddr_cmd_en_o <= fifo_wb_wr_rd_d or fifo_wb_rd_addr_rd_d;
    
    --------------------------------------
    -- DDR Control
    --------------------------------------

    
    
    fifo_wb_wr_rd_s <= ddr_wdf_rdy_i and not fifo_wb_wr_empty_s;
    fifo_wb_rd_addr_rd_s <= ddr_rdy_i and not fifo_wb_rd_addr_empty_s;
    fifo_wb_rd_data_wr_s <= ddr_rd_data_valid_i;
    fifo_wb_rd_data_din_s <= ddr_rd_data_i;
    
    p_ddr_ctrl : process (ddr_ui_clk_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            fifo_wb_rd_addr_rd_d <= '0';
            fifo_wb_wr_rd_d <= '0';
        elsif rising_edge(ddr_ui_clk_i) then
            fifo_wb_wr_rd_d <= fifo_wb_wr_rd_s;
            fifo_wb_rd_addr_rd_d <= fifo_wb_rd_addr_rd_s;
            

        end if;
    end process p_ddr_ctrl;
	
    --------------------------------------
    -- Stall proc
    --------------------------------------
	wb_stall_s <= fifo_wb_wr_full_s or fifo_wb_rd_addr_full_s or (not ddr_wdf_rdy_i) or (not ddr_rdy_i);
	wb_stall_o <= wb_stall_s;
    p_wb_stall : process (wb_clk_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            --wb_stall_s <= '0';
            wb_stall_d <= '0';
			wb_stall_dd <= '0';

        elsif rising_edge(wb_clk_i) then

			
            wb_stall_d <= wb_stall_s;
            wb_stall_dd <= wb_stall_d;
        end if;
    end process p_wb_stall;
end architecture behavioral;

