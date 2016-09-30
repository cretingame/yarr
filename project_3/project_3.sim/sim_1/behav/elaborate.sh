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
ExecStep $xv_path/bin/xelab -wto b09ea5c07d5842dab8597c965b3c9c8e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot simple_counter_behav xil_defaultlib.simple_counter -log elaborate.log
