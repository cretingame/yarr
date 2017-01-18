
 add_fsm_encoding \
       {wb_master64.state_s} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0110} {0100 0100} {0101 0111} {0110 1000} {0111 1001} {1000 0101} {1001 1010} {1010 0011} }

 add_fsm_encoding \
       {dma_controller.dma_ctrl_current_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 110} {110 101} }

 add_fsm_encoding \
       {p2l_dma_master.p2l_dma_current_state} \
       { }  \
       {{000 00} {001 01} {011 10} {100 11} }

 add_fsm_encoding \
       {l2p_dma_master.l2p_dma_current_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {101 100} {110 110} {111 101} }
