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
ExecStep $xv_path/bin/xsim wb_master64_bench_behav -key {Behavioral:sim_1:Functional:wb_master64_bench} -tclbatch wb_master64_bench.tcl -view /home/asautaux/yarr/project_pcie_5/project_pcie_5.srcs/sim_1/imports/project_sim/wb_master64_bench_behav.wcfg -view /home/asautaux/yarr/project_pcie_5/top_bench_behav.wcfg -log simulate.log
