# Exporting core ddr_dma_write_axi4 to TCL
# Exporting Create HDL core command for module ddr_dma_write_axi4
create_hdl_core -file {hdl/ddr_dma_write_axi4.vhd} -module {ddr_dma_write_axi4} -library {work} -package {}
# Exporting BIF information of  HDL core command for module ddr_dma_write_axi4
hdl_core_add_bif -hdl_core_name {ddr_dma_write_axi4} -bif_definition {AXI4:AMBA:AMBA4:master} -bif_name {AXI4Master} -signal_map {\
"AWADDR:AWADDR" \
"AWLEN:AWLEN" \
"AWSIZE:AWSIZE" \
"AWBURST:AWBURST" \
"AWCACHE:AWCACHE" \
"AWPROT:AWPROT" \
"AWVALID:AWVALID" \
"AWREADY:AWREADY" \
"WDATA:WDATA" \
"WSTRB:WSTRB" \
"WLAST:WLAST" \
"WVALID:WVALID" \
"WREADY:WREADY" \
"BID:BID" \
"BRESP:BRESP" \
"BVALID:BVALID" \
"BREADY:BREADY" \
"ARID:ARID" \
"ARADDR:ARADDR" \
"ARLEN:ARLEN" \
"ARSIZE:ARSIZE" \
"ARBURST:ARBURST" \
"ARCACHE:ARCACHE" \
"ARPROT:ARPROT" \
"ARVALID:ARVALID" \
"ARREADY:ARREADY" \
"RID:RID" \
"RDATA:RDATA" \
"RRESP:RRESP" \
"RLAST:RLAST" \
"RVALID:RVALID" \
"RREADY:RREADY" \
"AWID:AWID" }
hdl_core_delete_parameters -hdl_core_name {ddr_dma_write_axi4} -parameters {AXI_ID_WIDTH}
