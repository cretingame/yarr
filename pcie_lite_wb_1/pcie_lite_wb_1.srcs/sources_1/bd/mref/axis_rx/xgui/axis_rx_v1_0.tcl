# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "address_mask_c" -parent ${Page_0}
  ipgui::add_param $IPINST -name "axis_data_width_c" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wb_address_width_c" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wb_data_width_c" -parent ${Page_0}


}

proc update_PARAM_VALUE.address_mask_c { PARAM_VALUE.address_mask_c } {
	# Procedure called to update address_mask_c when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.address_mask_c { PARAM_VALUE.address_mask_c } {
	# Procedure called to validate address_mask_c
	return true
}

proc update_PARAM_VALUE.axis_data_width_c { PARAM_VALUE.axis_data_width_c } {
	# Procedure called to update axis_data_width_c when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.axis_data_width_c { PARAM_VALUE.axis_data_width_c } {
	# Procedure called to validate axis_data_width_c
	return true
}

proc update_PARAM_VALUE.wb_address_width_c { PARAM_VALUE.wb_address_width_c } {
	# Procedure called to update wb_address_width_c when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wb_address_width_c { PARAM_VALUE.wb_address_width_c } {
	# Procedure called to validate wb_address_width_c
	return true
}

proc update_PARAM_VALUE.wb_data_width_c { PARAM_VALUE.wb_data_width_c } {
	# Procedure called to update wb_data_width_c when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wb_data_width_c { PARAM_VALUE.wb_data_width_c } {
	# Procedure called to validate wb_data_width_c
	return true
}


proc update_MODELPARAM_VALUE.axis_data_width_c { MODELPARAM_VALUE.axis_data_width_c PARAM_VALUE.axis_data_width_c } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.axis_data_width_c}] ${MODELPARAM_VALUE.axis_data_width_c}
}

proc update_MODELPARAM_VALUE.wb_address_width_c { MODELPARAM_VALUE.wb_address_width_c PARAM_VALUE.wb_address_width_c } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wb_address_width_c}] ${MODELPARAM_VALUE.wb_address_width_c}
}

proc update_MODELPARAM_VALUE.wb_data_width_c { MODELPARAM_VALUE.wb_data_width_c PARAM_VALUE.wb_data_width_c } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wb_data_width_c}] ${MODELPARAM_VALUE.wb_data_width_c}
}

proc update_MODELPARAM_VALUE.address_mask_c { MODELPARAM_VALUE.address_mask_c PARAM_VALUE.address_mask_c } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.address_mask_c}] ${MODELPARAM_VALUE.address_mask_c}
}

