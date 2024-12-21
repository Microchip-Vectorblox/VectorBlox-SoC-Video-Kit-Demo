/*-------------------------------------------------------------------------------------------------
--
-- File Name       : math_sub_multi_wb.v 
-- Description     : Subtract and multiply math block
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

module wb_math_sub_multi #(
	parameter   AWIDTH = 8,
    parameter   BWIDTH = 8,
    parameter   DWIDTH = 8,
    parameter   PWIDTH = AWIDTH+BWIDTH+1
)
(
    input   clk_i,
    input  [AWIDTH-1:0]        A_i, // Multiplier Coefficient
    input  [BWIDTH-1:0]        B_i, // Data
    input  [DWIDTH-1:0]        D_i, // Pre-Adder
    output reg [PWIDTH-1:0]    P_o  // Product 
);


/*================================================================================================
// Nets and Registers Declarations
//================================================================================================*/
reg  [AWIDTH-1:0]        A_reg;
reg  [BWIDTH-1:0]        B_reg;
reg  [DWIDTH-1:0]        D_reg;

/*================================================================================================
// Implementation
//================================================================================================*/
always @(posedge clk_i) begin
  A_reg <= A_i;
  B_reg <= B_i;
  D_reg <= D_i;
end

always @(posedge clk_i) begin
  P_o <= (B_reg - D_reg) * A_reg;
end

endmodule