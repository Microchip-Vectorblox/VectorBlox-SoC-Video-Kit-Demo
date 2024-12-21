# Exporting core DDR_Frame_Blanker to TCL
# Exporting Create HDL core command for module DDR_Frame_Blanker
create_hdl_core -file {hdl/DDR_Frame_Blanker.v} -module {DDR_Frame_Blanker} -library {work} -package {}
# Exporting BIF information of  HDL core command for module DDR_Frame_Blanker
hdl_core_add_bif -hdl_core_name {DDR_Frame_Blanker} -bif_definition {AXI4:AMBA:AMBA4:master} -bif_name {Write_Channel} -signal_map {\
"AWADDR:AWADDR" \
"AWSIZE:AWLEN" \
"AWVALID:AWVALID" \
"AWREADY:AWREADY" \
"WDATA:WDATA" \
"WVALID:WVALID" \
"BUSER:BUSER" }
