/*-------------------------------------------------------------------------------------------------
--
-- File Name       : WB_Core.v 
-- Description     : Core 1-channel processing block for white balance IP
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

module WB_Core #(
	parameter   G_COEF_WIDTH = 8,
    parameter   G_FRAC_WIDTH = 4,
    parameter   G_DATA_WIDTH = 8
)
(
    input   clk_i,
    input   rstn_i,
    
    input  [G_COEF_WIDTH-1:0]        gain_i,
    input  [G_DATA_WIDTH-1:0]        offset_i,
    
    input  [G_DATA_WIDTH-1:0]        data_i,
    
    output reg [G_DATA_WIDTH-1:0]    data_o 
);

localparam PWIDTH = G_COEF_WIDTH+G_DATA_WIDTH+1;

/*================================================================================================
// Nets and Registers Declarations
//================================================================================================*/
wire [PWIDTH-1:0]     product;
reg  [PWIDTH+1-1:0]   round;

/*================================================================================================
// Implementation
//================================================================================================*/
wb_math_sub_multi #(.AWIDTH (G_COEF_WIDTH),.BWIDTH(G_DATA_WIDTH),.DWIDTH(G_DATA_WIDTH),.PWIDTH(PWIDTH))
math_sub_multi(
    .clk_i (clk_i),
    .A_i   (gain_i),   // Multiplier Coefficient
    .B_i   (data_i),   // Data
    .D_i   (offset_i), // Pre-Adder/Offset
    .P_o   (product)   // Product 
);

always @(posedge clk_i or negedge rstn_i) begin
  if (!rstn_i) begin	
    round <= {PWIDTH+1{1'b0}};
  end else begin			
    round <= product + {1'b1,{G_FRAC_WIDTH-1{1'b0}}};
  end
end

always @(posedge clk_i or negedge rstn_i) begin
  if (!rstn_i) begin	
    data_o <= {G_DATA_WIDTH{1'b0}};
  end else if (|round[PWIDTH:G_DATA_WIDTH+G_FRAC_WIDTH]) begin
    data_o <= {G_DATA_WIDTH{1'b1}};  
  end else begin			
    data_o <= round[G_DATA_WIDTH+G_FRAC_WIDTH-1:G_FRAC_WIDTH];
  end
end

endmodule

