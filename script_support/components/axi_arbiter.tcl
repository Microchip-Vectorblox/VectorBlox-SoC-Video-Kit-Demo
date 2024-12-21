# Exporting core axi_arbiter to TCL
# Exporting Create HDL core command for module axi_arbiter
create_hdl_core -file {hdl/axi_arbiter.vhd} -module {axi_arbiter} -library {work} -package {}
# Exporting BIF information of  HDL core command for module axi_arbiter
hdl_core_add_bif -hdl_core_name {axi_arbiter} -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name {rt} -signal_map {\
"AWID:s_realtime_awid" \
"AWADDR:s_realtime_awaddr" \
"AWLEN:s_realtime_awlen" \
"AWSIZE:s_realtime_awsize" \
"AWBURST:s_realtime_awburst" \
"AWVALID:s_realtime_awvalid" \
"AWREADY:s_realtime_awready" \
"WDATA:s_realtime_wdata" \
"WSTRB:s_realtime_wstrb" \
"WLAST:s_realtime_wlast" \
"WVALID:s_realtime_wvalid" \
"WREADY:s_realtime_wready" \
"BID:s_realtime_bid" \
"BRESP:s_realtime_bresp" \
"BVALID:s_realtime_bvalid" \
"BREADY:s_realtime_bready" \
"ARID:s_realtime_arid" \
"ARADDR:s_realtime_araddr" \
"ARLEN:s_realtime_arlen" \
"ARSIZE:s_realtime_arsize" \
"ARBURST:s_realtime_arburst" \
"ARVALID:s_realtime_arvalid" \
"ARREADY:s_realtime_arready" \
"RID:s_realtime_rid" \
"RDATA:s_realtime_rdata" \
"RRESP:s_realtime_rresp" \
"RLAST:s_realtime_rlast" \
"RVALID:s_realtime_rvalid" \
"RREADY:s_realtime_rready" }
hdl_core_add_bif -hdl_core_name {axi_arbiter} -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name {be} -signal_map {\
"AWID:s_besteffort_awid" \
"AWADDR:s_besteffort_awaddr" \
"AWLEN:s_besteffort_awlen" \
"AWSIZE:s_besteffort_awsize" \
"AWBURST:s_besteffort_awburst" \
"AWVALID:s_besteffort_awvalid" \
"AWREADY:s_besteffort_awready" \
"WDATA:s_besteffort_wdata" \
"WSTRB:s_besteffort_wstrb" \
"WLAST:s_besteffort_wlast" \
"WVALID:s_besteffort_wvalid" \
"WREADY:s_besteffort_wready" \
"BID:s_besteffort_bid" \
"BRESP:s_besteffort_bresp" \
"BVALID:s_besteffort_bvalid" \
"BREADY:s_besteffort_bready" \
"ARID:s_besteffort_arid" \
"ARADDR:s_besteffort_araddr" \
"ARLEN:s_besteffort_arlen" \
"ARSIZE:s_besteffort_arsize" \
"ARBURST:s_besteffort_arburst" \
"ARVALID:s_besteffort_arvalid" \
"ARREADY:s_besteffort_arready" \
"RID:s_besteffort_rid" \
"RDATA:s_besteffort_rdata" \
"RRESP:s_besteffort_rresp" \
"RLAST:s_besteffort_rlast" \
"RVALID:s_besteffort_rvalid" \
"RREADY:s_besteffort_rready" }
hdl_core_add_bif -hdl_core_name {axi_arbiter} -bif_definition {AXI4:AMBA:AMBA4:mirroredSlave} -bif_name {BIF_3} -signal_map {\
"AWID:m_axi_awid" \
"AWADDR:m_axi_awaddr" \
"AWLEN:m_axi_awlen" \
"AWSIZE:m_axi_awsize" \
"AWBURST:m_axi_awburst" \
"AWCACHE:m_axi_awcache" \
"AWPROT:m_axi_awprot" \
"AWVALID:m_axi_awvalid" \
"AWREADY:m_axi_awready" \
"WDATA:m_axi_wdata" \
"WSTRB:m_axi_wstrb" \
"WLAST:m_axi_wlast" \
"WVALID:m_axi_wvalid" \
"WREADY:m_axi_wready" \
"BID:m_axi_bid" \
"BRESP:m_axi_bresp" \
"BVALID:m_axi_bvalid" \
"BREADY:m_axi_bready" \
"ARID:m_axi_arid" \
"ARADDR:m_axi_araddr" \
"ARLEN:m_axi_arlen" \
"ARSIZE:m_axi_arsize" \
"ARBURST:m_axi_arburst" \
"ARCACHE:m_axi_arcache" \
"ARPROT:m_axi_arprot" \
"ARVALID:m_axi_arvalid" \
"ARREADY:m_axi_arready" \
"RID:m_axi_rid" \
"RDATA:m_axi_rdata" \
"RRESP:m_axi_rresp" \
"RLAST:m_axi_rlast" \
"RVALID:m_axi_rvalid" \
"RREADY:m_axi_rready" }
