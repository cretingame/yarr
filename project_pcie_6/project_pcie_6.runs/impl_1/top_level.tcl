proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/asautaux/yarr/project_pcie_6/project_pcie_6.cache/wt [current_project]
  set_property parent.project_path /home/asautaux/yarr/project_pcie_6/project_pcie_6.xpr [current_project]
  set_property ip_repo_paths /home/asautaux/yarr/project_pcie_6/project_pcie_6.cache/ip [current_project]
  set_property ip_output_repo /home/asautaux/yarr/project_pcie_6/project_pcie_6.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.runs/synth_1/top_level.dcp
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/pcie_7x_0.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/pcie_7x_0.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_wb.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_wb.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16.dcp]
  add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr.dcp
  set_property netlist_only true [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr.dcp]
  read_xdc -mode out_of_context -ref pcie_7x_0 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/synth/pcie_7x_0_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/synth/pcie_7x_0_ooc.xdc]
  read_xdc -ref pcie_7x_0 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0-PCIE_X0Y0.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0-PCIE_X0Y0.xdc]
  read_xdc -mode out_of_context -ref l2p_fifo64 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64_ooc.xdc]
  read_xdc -ref l2p_fifo64 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64/l2p_fifo64.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64/l2p_fifo64.xdc]
  read_xdc -mode out_of_context -ref ila_axis -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis_ooc.xdc]
  read_xdc -ref ila_axis -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref ila_dma_ctrl_reg -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg_ooc.xdc]
  read_xdc -ref ila_dma_ctrl_reg -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref ila_wsh_pipe -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe_ooc.xdc]
  read_xdc -ref ila_wsh_pipe -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref ila_pd_pdm -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm_ooc.xdc]
  read_xdc -ref ila_pd_pdm -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref fifo_96x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512_ooc.xdc]
  read_xdc -ref fifo_96x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512/fifo_96x512.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512/fifo_96x512.xdc]
  read_xdc -mode out_of_context -ref ila_wb -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_wb_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_wb_ooc.xdc]
  read_xdc -ref ila_wb -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wb/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref ila_l2p_dma -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma_ooc.xdc]
  read_xdc -ref ila_l2p_dma -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_v6_1/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref fifo_32x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512_ooc.xdc]
  read_xdc -ref fifo_32x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512/fifo_32x512.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512/fifo_32x512.xdc]
  read_xdc -mode out_of_context -ref fifo_64x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512_ooc.xdc]
  read_xdc -ref fifo_64x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512/fifo_64x512.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512/fifo_64x512.xdc]
  read_xdc -mode out_of_context -ref mig_7series_0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0_ooc.xdc]
  read_xdc -ref mig_7series_0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc]
  read_xdc -mode out_of_context -ref fifo_256x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16_ooc.xdc]
  read_xdc -ref fifo_256x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16/fifo_256x16.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16/fifo_256x16.xdc]
  read_xdc -mode out_of_context -ref fifo_315x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16_ooc.xdc]
  read_xdc -ref fifo_315x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16/fifo_315x16.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16/fifo_315x16.xdc]
  read_xdc -mode out_of_context -ref fifo_27x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16_ooc.xdc]
  read_xdc -ref fifo_27x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16/fifo_27x16.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16/fifo_27x16.xdc]
  read_xdc -mode out_of_context -ref fifo_4x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16_ooc.xdc]
  read_xdc -ref fifo_4x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16/fifo_4x16.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16/fifo_4x16.xdc]
  read_xdc -mode out_of_context -ref ila_ddr -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr_ooc.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr_ooc.xdc]
  read_xdc -ref ila_ddr -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_v6_1/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_v6_1/constraints/ila.xdc]
  read_xdc /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/new/project_2.xdc
  read_xdc /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/Documents/ddr3.xdc
  read_xdc -ref l2p_fifo64 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64/l2p_fifo64_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64/l2p_fifo64_clocks.xdc]
  read_xdc -ref fifo_96x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512/fifo_96x512_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512/fifo_96x512_clocks.xdc]
  read_xdc -ref fifo_32x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512/fifo_32x512_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512/fifo_32x512_clocks.xdc]
  read_xdc -ref fifo_64x512 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512/fifo_64x512_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512/fifo_64x512_clocks.xdc]
  read_xdc -ref fifo_256x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16/fifo_256x16_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16/fifo_256x16_clocks.xdc]
  read_xdc -ref fifo_315x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16/fifo_315x16_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16/fifo_315x16_clocks.xdc]
  read_xdc -ref fifo_27x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16/fifo_27x16_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16/fifo_27x16_clocks.xdc]
  read_xdc -ref fifo_4x16 -cells U0 /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16/fifo_4x16_clocks.xdc
  set_property processing_order LATE [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16/fifo_4x16_clocks.xdc]
  link_design -top top_level -part xc7k160tfbg676-2
  write_hwdef -file top_level.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force top_level_opt.dcp
  report_drc -file top_level_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force top_level_placed.dcp
  report_io -file top_level_io_placed.rpt
  report_utilization -file top_level_utilization_placed.rpt -pb top_level_utilization_placed.pb
  report_control_sets -verbose -file top_level_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_level_routed.dcp
  report_drc -file top_level_drc_routed.rpt -pb top_level_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file top_level_timing_summary_routed.rpt -rpx top_level_timing_summary_routed.rpx
  report_power -file top_level_power_routed.rpt -pb top_level_power_summary_routed.pb -rpx top_level_power_routed.rpx
  report_route_status -file top_level_route_status.rpt -pb top_level_route_status.pb
  report_clock_utilization -file top_level_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force top_level.mmi }
  write_bitstream -force top_level.bit -bin_file
  catch { write_sysdef -hwdef top_level.hwdef -bitfile top_level.bit -meminfo top_level.mmi -file top_level.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

