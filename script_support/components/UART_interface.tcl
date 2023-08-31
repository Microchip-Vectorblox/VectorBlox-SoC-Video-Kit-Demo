# Creating SmartDesign UART_interface
set sd_name {UART_interface}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mem_rdy_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {reset_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {sys_clk_i} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {bayer_edge_sel_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {curve_valid_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pip_mode_sel_o} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pip_select_o} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {ram_data_i} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {alpha_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {bayer_format0_o} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {bayer_format1_o} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {bayer_format2_o} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {bgain_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {brightness_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {contrast_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {curve_addr_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {curve_data_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ggain_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {h_pan_c1_o} -port_direction {OUT} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {h_pan_c2_o} -port_direction {OUT} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {h_shift_o} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {ram_addr_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {rgain_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {step_o} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {v_pan_c1_o} -port_direction {OUT} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {v_pan_c2_o} -port_direction {OUT} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {v_shift_o} -port_direction {OUT} -port_range {[15:0]}


# Add addr_decoder_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {addr_decoder} -hdl_file {hdl\addr_decoder.vhd} -instance_name {addr_decoder_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {addr_decoder_0:ch_selector_o}



# Add COREUART_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREUART_C0} -instance_name {COREUART_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BIT8} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:CSN} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:ODD_N_EVEN} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:OVERFLOW}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:PARITY_EN} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:PARITY_ERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:FRAMING_ERR}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BAUD_VAL} -value {0000000000010}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BAUD_VAL_FRACTION} -value {011}



# Add ram_read_uart_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {ram_read_uart} -hdl_file {hdl\ram_read_uart.vhd} -instance_name {ram_read_uart_0}



# Add receive_data_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {receive_data} -hdl_file {hdl\receive_data.vhd} -instance_name {receive_data_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {receive_data_0:addr_o} -pin_slices {[7:0]}



# Add send_data_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {send_data} -hdl_file {hdl\send_data.vhd} -instance_name {send_data_0}



# Add timer_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {timer} -hdl_file {hdl\timer.vhd} -instance_name {timer_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {timer_0:pulse_o}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:CLK" "addr_decoder_0:sys_clk_i" "ram_read_uart_0:sys_clk_i" "receive_data_0:sys_clk_i" "send_data_0:sys_clk_i" "sys_clk_i" "timer_0:sys_clk_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:OEN" "receive_data_0:oen_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:RESET_N" "addr_decoder_0:reset_i" "ram_read_uart_0:reset_i" "receive_data_0:reset_i" "reset_i" "send_data_0:reset_i" "timer_0:reset_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:RX" "RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:RXRDY" "receive_data_0:rx_rdy_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:TX" "TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:TXRDY" "send_data_0:tx_rdy_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:WEN" "send_data_0:wen_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:bayer_edge_sel_o" "bayer_edge_sel_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:curve_valid_o" "curve_valid_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:data_rdy_i" "receive_data_0:data_rdy_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:pip_mode_sel_o" "pip_mode_sel_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:pip_select_o" "pip_select_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"mem_rdy_i" "ram_read_uart_0:mem_rdy_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:start_send_o" "send_data_0:start_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:timer_i" "timer_0:tick_o" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:DATA_IN" "send_data_0:data_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:DATA_OUT" "receive_data_0:data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:addr_i" "receive_data_0:addr_o[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:alpha_o" "alpha_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:bayer_format0_o" "bayer_format0_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:bayer_format1_o" "bayer_format1_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:bayer_format2_o" "bayer_format2_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:bgain_o" "bgain_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:brightness_o" "brightness_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:contrast_o" "contrast_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:curve_addr_o" "curve_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:curve_data_o" "curve_data_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:data_i" "receive_data_0:data_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:ggain_o" "ggain_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:h_pan_c1_o" "h_pan_c1_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:h_pan_c2_o" "h_pan_c2_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:h_shift_o" "h_shift_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:rgain_o" "rgain_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:step_o" "step_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:v_pan_c1_o" "v_pan_c1_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:v_pan_c2_o" "v_pan_c2_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"addr_decoder_0:v_shift_o" "v_shift_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_addr_o" "ram_read_uart_0:ram_addr_o" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_data_i" "ram_read_uart_0:ram_data_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:data1_lsb_o" "send_data_0:data_chb_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:data1_msb_o" "send_data_0:data_cha_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:data2_lsb_o" "send_data_0:data_chd_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:data2_msb_o" "send_data_0:data_chc_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ram_read_uart_0:pkt_status_o" "send_data_0:status_i" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign UART_interface
generate_component -component_name ${sd_name}
