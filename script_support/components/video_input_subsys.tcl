# Creating SmartDesign "video_input_subsys"
set sd_name {video_input_subsys}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Write_Channel_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Write_Channel_BUSER} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ddr_aclk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ddr_aresetn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {scaler_resetn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {vid_data_valid_i} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {vid_in_clk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {vid_in_frame_sync} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {vid_in_resetn} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Write_Channel_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Write_Channel_WVALID} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BID} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RDATA} -port_direction {IN} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RID} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HORZ_RES_IN_I} -port_direction {IN} -port_range {[12:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {HORZ_RES_OUT_I} -port_direction {IN} -port_range {[12:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SCALE_FACTOR_HORZ_I} -port_direction {IN} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SCALE_FACTOR_VERT_I} -port_direction {IN} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {VERT_RES_IN_I} -port_direction {IN} -port_range {[12:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {VERT_RES_OUT_I} -port_direction {IN} -port_range {[12:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {config_line_stride_i} -port_direction {IN} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {scaler_b_frame_wr_addr} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {scaler_g_frame_wr_addr} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {scaler_r_frame_wr_addr} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {vid_data_i} -port_direction {IN} -port_range {[23:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {vid_in_frame_wr_addr} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARID} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWID} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WDATA} -port_direction {OUT} -port_range {[255:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4M_scaler_WSTRB} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Write_Channel_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Write_Channel_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Write_Channel_WDATA} -port_direction {OUT} -port_range {[511:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {Write_Channel} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWADDR:Write_Channel_AWADDR" \
"AWSIZE:Write_Channel_AWLEN" \
"AWVALID:Write_Channel_AWVALID" \
"AWREADY:Write_Channel_AWREADY" \
"WDATA:Write_Channel_WDATA" \
"WVALID:Write_Channel_WVALID" \
"BUSER:Write_Channel_BUSER" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI4M_scaler} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:AXI4M_scaler_AWID" \
"AWADDR:AXI4M_scaler_AWADDR" \
"AWLEN:AXI4M_scaler_AWLEN" \
"AWSIZE:AXI4M_scaler_AWSIZE" \
"AWBURST:AXI4M_scaler_AWBURST" \
"AWCACHE:AXI4M_scaler_AWCACHE" \
"AWPROT:AXI4M_scaler_AWPROT" \
"AWVALID:AXI4M_scaler_AWVALID" \
"AWREADY:AXI4M_scaler_AWREADY" \
"WDATA:AXI4M_scaler_WDATA" \
"WSTRB:AXI4M_scaler_WSTRB" \
"WLAST:AXI4M_scaler_WLAST" \
"WVALID:AXI4M_scaler_WVALID" \
"WREADY:AXI4M_scaler_WREADY" \
"BID:AXI4M_scaler_BID" \
"BRESP:AXI4M_scaler_BRESP" \
"BVALID:AXI4M_scaler_BVALID" \
"BREADY:AXI4M_scaler_BREADY" \
"ARID:AXI4M_scaler_ARID" \
"ARADDR:AXI4M_scaler_ARADDR" \
"ARLEN:AXI4M_scaler_ARLEN" \
"ARSIZE:AXI4M_scaler_ARSIZE" \
"ARBURST:AXI4M_scaler_ARBURST" \
"ARCACHE:AXI4M_scaler_ARCACHE" \
"ARPROT:AXI4M_scaler_ARPROT" \
"ARVALID:AXI4M_scaler_ARVALID" \
"ARREADY:AXI4M_scaler_ARREADY" \
"RID:AXI4M_scaler_RID" \
"RDATA:AXI4M_scaler_RDATA" \
"RRESP:AXI4M_scaler_RRESP" \
"RLAST:AXI4M_scaler_RLAST" \
"RVALID:AXI4M_scaler_RVALID" \
"RREADY:AXI4M_scaler_RREADY" } 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {vid_data_i} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {vid_data_i} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {vid_data_i} -pin_slices {[7:0]}
# Add ddr_dma_write_axi4_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_axi4} -instance_name {ddr_dma_write_axi4_0}
# Exporting Parameters of instance ddr_dma_write_axi4_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_0} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:256" \
"DATA_WIDTH:8" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:1920" \
"STRIDE_ISBYTES:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_0}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_axi4_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_0:config_line_stride_i} -pin_slices {[15:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_axi4_0:config_line_stride_i} -pin_slices {[31:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_axi4_0:config_line_stride_i[31:16]} -value {GND}



# Add ddr_dma_write_bif_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {ddr_dma_write_bif} -instance_name {ddr_dma_write_bif_0}
# Exporting Parameters of instance ddr_dma_write_bif_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0} -params {\
"ADDRESS_WIDTH:32" \
"AXI_ADDRESS_WIDTH:32" \
"AXI_DATA_WIDTH:512" \
"AXI_ID_WIDTH:7" \
"DATA_WIDTH:32" \
"MAX_BURST_LENGTH:256" \
"MAX_LINE_SIZE:3840" \
"STRIDE_ISBYTES:1" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0}
sd_update_instance -sd_name ${sd_name} -instance_name {ddr_dma_write_bif_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:target_data_i} -pin_slices {[23:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ddr_dma_write_bif_0:target_data_i} -pin_slices {[31:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_bif_0:target_data_i[31:24]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ddr_dma_write_bif_0:config_line_stride_i} -value {00000000000000000010000000000000}



# Add IMAGE_SCALER_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IMAGE_SCALER_C0} -instance_name {IMAGE_SCALER_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_VALID_I" "ddr_dma_write_bif_0:target_data_valid_i" "vid_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_VALID_O" "ddr_dma_write_axi4_0:target_data_valid_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:IP_CLK_I" "IMAGE_SCALER_C0_0:SYS_CLK_I" "ddr_dma_write_axi4_0:clk" "ddr_dma_write_bif_0:clk" "vid_in_clk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:RESETN_I" "scaler_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_aclk" "ddr_dma_write_axi4_0:aclk" "ddr_dma_write_bif_0:aclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_aresetn" "ddr_dma_write_axi4_0:aresetn" "ddr_dma_write_bif_0:aresetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_0:resetn" "ddr_dma_write_bif_0:resetn" "vid_in_resetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_0:target_frame_sync_i" "ddr_dma_write_bif_0:target_frame_sync_i" "vid_in_frame_sync" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"HORZ_RES_IN_I" "IMAGE_SCALER_C0_0:HORZ_RES_IN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HORZ_RES_OUT_I" "IMAGE_SCALER_C0_0:HORZ_RES_OUT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_B_I" "vid_data_i[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_B_O" "ddr_dma_write_axi4_0:target_data_b_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_G_I" "vid_data_i[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_G_O" "ddr_dma_write_axi4_0:target_data_g_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_R_I" "vid_data_i[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:DATA_R_O" "ddr_dma_write_axi4_0:target_data_r_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:SCALE_FACTOR_HORZ_I" "SCALE_FACTOR_HORZ_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:SCALE_FACTOR_VERT_I" "SCALE_FACTOR_VERT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:VERT_RES_IN_I" "VERT_RES_IN_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMAGE_SCALER_C0_0:VERT_RES_OUT_I" "VERT_RES_OUT_I" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"config_line_stride_i" "ddr_dma_write_axi4_0:config_line_stride_i[15:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_0:config_frame_address_b_i" "scaler_b_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_0:config_frame_address_g_i" "scaler_g_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_axi4_0:config_frame_address_r_i" "scaler_r_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_bif_0:config_frame_address_i" "vid_in_frame_wr_addr" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ddr_dma_write_bif_0:target_data_i[23:0]" "vid_data_i" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI4M_scaler" "ddr_dma_write_axi4_0:AXI4Master" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Write_Channel" "ddr_dma_write_bif_0:Write_Channel" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "video_input_subsys"
generate_component -component_name ${sd_name}
