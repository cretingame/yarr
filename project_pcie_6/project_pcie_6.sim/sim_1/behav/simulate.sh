#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim p2l_decoder_wb32_bench_behav -key {Behavioral:sim_1:Functional:p2l_decoder_wb32_bench} -tclbatch p2l_decoder_wb32_bench.tcl -view /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sim_1/imports/project_sim/wb_master64_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sim_1/imports/project_pcie_5/top_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/p2l_decoder_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/p2l_dma_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/p2l_decoder_wb_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/wbmaster32_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_6/p2l_decoder_wb32_bench_behav.wcfg -log simulate.log
