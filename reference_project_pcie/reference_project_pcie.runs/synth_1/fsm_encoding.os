
 add_fsm_encoding \
       {pcie_7x_0_pipe_reset.fsm} \
       { }  \
       {{00000 00000000000000100} {00001 00000000000000010} {00010 00000000000000001} {00011 00000000001000000} {00100 00000000010000000} {00101 00000000000001000} {00110 00000000000010000} {00111 00000000000100000} {01000 00000001000000000} {01001 00000010000000000} {01010 00000100000000000} {01011 00001000000000000} {01100 00000000100000000} {01101 00010000000000000} {01110 00100000000000000} {01111 01000000000000000} {10000 10000000000000000} }

 add_fsm_encoding \
       {pcie_7x_0_qpll_reset.fsm} \
       { }  \
       {{0001 111} {0010 000} {0011 001} {0100 010} {0101 011} {0110 100} {1011 101} {1100 110} }

 add_fsm_encoding \
       {pcie_7x_0_rxeq_scan.fsm} \
       { }  \
       {{0000 00001} {0001 00010} {0010 00100} {0100 01000} {1000 10000} }

 add_fsm_encoding \
       {pcie_7x_0_pipe_eq.fsm_tx} \
       { }  \
       {{000000 0000001} {000001 0000010} {000010 0000100} {000100 0001000} {001000 0010000} {010000 0100000} {100000 1000000} }

 add_fsm_encoding \
       {pcie_7x_0_pipe_eq.fsm_rx} \
       { }  \
       {{000000 000} {000001 001} {000010 010} {000100 011} {001000 100} {010000 101} {100000 110} }

 add_fsm_encoding \
       {pcie_7x_0_pipe_sync.txsync_fsm.fsm_tx} \
       { }  \
       {{000000 0000001} {000001 0000010} {000010 0000100} {000100 0001000} {001000 0010000} {010000 0100000} {100000 1000000} }

 add_fsm_encoding \
       {qpcie_dma_engine.dma_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_dma_engine__parameterized0.dma_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_dma_engine__parameterized1.dma_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_dma_engine__parameterized2.dma_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_ad_translator.wrres_sm_re} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }

 add_fsm_encoding \
       {qpcie_ad_translator.wrres_sm_re} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }

 add_fsm_encoding \
       {qpcie_ad_translator.wrres_sm_re} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }

 add_fsm_encoding \
       {qpcie_ad_translator.wrext_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_ad_translator.wrres_sm_re} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }

 add_fsm_encoding \
       {qpcie_ad_translator.rdres_sm_re} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {qpcie_ad_translator.rdres_sm_re} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {qpcie_ad_translator.rdres_sm_re} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {qpcie_ad_translator.rdres_sm_re} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {qpcie_p2q_wr_mgt.unb_wreq_sm} \
       { }  \
       {{000 000001} {001 001000} {010 000010} {011 000100} {100 010000} {111 100000} }

 add_fsm_encoding \
       {qpcie_p2q_rd_mgt.unb_rreq_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {qpcie_p2q_rd_mgt.p2q_cpl_sm} \
       { }  \
       {{00 00} {01 11} {10 01} {11 10} }

 add_fsm_encoding \
       {qpcie_q2p_p_mgt.q2p_p_sm} \
       { }  \
       {{00 00} {01 11} {10 01} {11 10} }

 add_fsm_encoding \
       {qpcie_q2p_np_mgt.unb_rcpl_sm} \
       { }  \
       {{00 00} {01 11} {10 01} {11 10} }

 add_fsm_encoding \
       {qpcie_cfgio_mgt.cfgio_sm} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {protocore.hs_fsm} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0110} {0101 0101} {0110 0100} {0111 0111} {1000 1001} {1001 1000} {1010 1010} }
