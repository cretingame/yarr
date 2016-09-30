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
ExecStep $xv_path/bin/xelab -wto 7e80231c2dcc4382910a04a7b85252e1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot simple_counter_behav xil_defaultlib.simple_counter -log elaborate.log
