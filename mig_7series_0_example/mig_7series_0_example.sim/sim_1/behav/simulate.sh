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
ExecStep $xv_path/bin/xsim sim_tb_top_behav -key {Behavioral:sim_1:Functional:sim_tb_top} -tclbatch sim_tb_top.tcl -view /home/asautaux/yarr/mig_7series_0_example/sim_tb_top_behav.wcfg -log simulate.log
