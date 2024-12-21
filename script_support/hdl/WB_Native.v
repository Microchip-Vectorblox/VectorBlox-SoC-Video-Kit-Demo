/*-------------------------------------------------------------------------------------------------
--
-- File Name       : WB_Native.v 
-- Description     : White balance IP main processing module
-- Targeted device : Microchip FPGAs                    
-- Author          : Solutions Team
-- Update History  :
--                   July 5, 2023 - Initial version
--
-- COPYRIGHT 2023 BY MICROCHIP 
-- THE INFORMATION CONTAINED IN THIS DOCUMENT IS SUBJECT TO LICENSING RESTRICTIONS 
-- FROM MICROCHIP CORP.  IF YOU ARE NOT IN POSSESSION OF WRITTEN AUTHORIZATION FROM 
-- MICROCHIP FOR USE OF THIS FILE, THEN THE FILE SHOULD BE IMMEDIATELY DESTROYED AND 
-- NO BACK-UP OF THE FILE SHOULD BE MADE. 
-------------------------------------------------------------------------------------------------*/

module WB_Native #(
	parameter   G_DATA_WIDTH = 8,
    parameter   G_COEF_WIDTH = 10,
    parameter   G_FRAC_WIDTH = 4,
    parameter   G_PIXELS = 4
)
(
    input   clk_i,
	input   rstn_i,

    input [G_COEF_WIDTH-1:0]  gain_red_i,
    input [G_COEF_WIDTH-1:0]  gain_green_i,
    input [G_COEF_WIDTH-1:0]  gain_blue_i,
    
    input [G_DATA_WIDTH-1:0]  offset_red_i,
    input [G_DATA_WIDTH-1:0]  offset_green_i,
    input [G_DATA_WIDTH-1:0]  offset_blue_i,

    input                                data_valid_i,
    input [G_PIXELS*G_DATA_WIDTH-1:0]    data_red_i,
    input [G_PIXELS*G_DATA_WIDTH-1:0]    data_green_i,
    input [G_PIXELS*G_DATA_WIDTH-1:0]    data_blue_i,

    output                                   data_valid_o,
    output reg [G_PIXELS*G_DATA_WIDTH-1:0]   data_red_o,
    output reg [G_PIXELS*G_DATA_WIDTH-1:0]   data_green_o,
    output reg [G_PIXELS*G_DATA_WIDTH-1:0]   data_blue_o
);

localparam DELAY = 6; 
/*================================================================================================
// Nets and Registers Declarations
//================================================================================================*/
genvar i;

reg [G_PIXELS*G_DATA_WIDTH-1:0]    data_red;
reg [G_PIXELS*G_DATA_WIDTH-1:0]    data_green;
reg [G_PIXELS*G_DATA_WIDTH-1:0]    data_blue;

wire [G_PIXELS*G_DATA_WIDTH-1:0]    data_wb_red;
wire [G_PIXELS*G_DATA_WIDTH-1:0]    data_wb_green;
wire [G_PIXELS*G_DATA_WIDTH-1:0]    data_wb_blue;

reg [DELAY-1:0] data_valid_d;

/*================================================================================================
// Implementation
//================================================================================================*/
// Input Register
always @(posedge clk_i or negedge rstn_i) begin
  if (!rstn_i) begin	
    data_red <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
    data_green <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
    data_blue <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
  end else begin			
    data_red <= data_red_i;
    data_green <= data_green_i;
    data_blue <= data_blue_i;
  end
end

generate
for (i=0; i<G_PIXELS; i=i+1) begin: gen_mult
  
  WB_Core #(
    .G_COEF_WIDTH(G_COEF_WIDTH),
    .G_FRAC_WIDTH(G_FRAC_WIDTH),
    .G_DATA_WIDTH(G_DATA_WIDTH))
  wb_core_red (
    .clk_i    (clk_i),
    .rstn_i   (rstn_i),
    .gain_i   (gain_red_i),
    .offset_i (offset_red_i),
    .data_i   (data_red[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]),
    .data_o   (data_wb_red[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]));
    
  WB_Core #(
    .G_COEF_WIDTH(G_COEF_WIDTH),
    .G_FRAC_WIDTH(G_FRAC_WIDTH),
    .G_DATA_WIDTH(G_DATA_WIDTH))
  wb_core_green (
    .clk_i    (clk_i),
    .rstn_i   (rstn_i),
    .gain_i   (gain_green_i),
    .offset_i (offset_green_i),
    .data_i   (data_green[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]),
    .data_o   (data_wb_green[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]));
    
  WB_Core #(
    .G_COEF_WIDTH(G_COEF_WIDTH),
    .G_FRAC_WIDTH(G_FRAC_WIDTH),
    .G_DATA_WIDTH(G_DATA_WIDTH))
  wb_core_blue (
    .clk_i    (clk_i),
    .rstn_i   (rstn_i),
    .gain_i   (gain_blue_i),
    .offset_i (offset_blue_i),
    .data_i   (data_blue[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]),
    .data_o   (data_wb_blue[(i+1)*G_DATA_WIDTH-1: i*G_DATA_WIDTH]));
    
end
endgenerate


// Output Register
always @(posedge clk_i or negedge rstn_i) begin
  if (!rstn_i) begin	
    data_red_o <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
    data_green_o <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
    data_blue_o <= {G_PIXELS*G_DATA_WIDTH{1'b0}};
    data_valid_d <= {DELAY{1'b0}};
  end else begin			
    data_red_o <= data_wb_red;
    data_green_o <= data_wb_green;
    data_blue_o <= data_wb_blue;
    data_valid_d <= {data_valid_d[DELAY-2:0],data_valid_i};
  end
end

assign data_valid_o = data_valid_d[DELAY-1];

endmodule