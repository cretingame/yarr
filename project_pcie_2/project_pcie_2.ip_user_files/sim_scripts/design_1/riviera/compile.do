vlib work
vlib riviera

vlib riviera/util_ds_buf_v2_01_a
vlib riviera/xil_defaultlib

vmap util_ds_buf_v2_01_a riviera/util_ds_buf_v2_01_a
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work util_ds_buf_v2_01_a -93 \
"../../../ipstatic/util_ds_buf_v2_1/hdl/vhdl/util_ds_buf.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

