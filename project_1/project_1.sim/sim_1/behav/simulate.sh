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
ExecStep $xv_path/bin/xsim simple_counter_behav -key {Behavioral:sim_1:Functional:simple_counter} -tclbatch simple_counter.tcl -log simulate.log
