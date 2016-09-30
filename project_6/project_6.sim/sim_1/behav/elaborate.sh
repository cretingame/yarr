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
ExecStep $xv_path/bin/xelab -wto d7c5d5e471a24d4991ecb673ab2b75ef -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot top_level_behav xil_defaultlib.top_level -log elaborate.log
