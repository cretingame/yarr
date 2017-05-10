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
ExecStep $xv_path/bin/xelab -wto 9fd5f59a402248b39a3733b1a9df3669 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L xpm -L fifo_generator_v13_1_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot l2p_dma_bench_behav xil_defaultlib.l2p_dma_bench xil_defaultlib.glbl -log elaborate.log
