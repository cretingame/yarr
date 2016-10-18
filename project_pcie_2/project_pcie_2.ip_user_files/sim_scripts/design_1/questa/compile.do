vlib work
vlib msim

vlib msim/util_ds_buf_v2_01_a
vlib msim/xil_defaultlib

vmap util_ds_buf_v2_01_a msim/util_ds_buf_v2_01_a
vmap xil_defaultlib msim/xil_defaultlib

vcom -work util_ds_buf_v2_01_a -64 \
"../../../ipstatic/util_ds_buf_v2_1/hdl/vhdl/util_ds_buf.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

