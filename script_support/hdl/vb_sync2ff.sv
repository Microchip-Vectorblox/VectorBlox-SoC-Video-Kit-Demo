module vb_sync2ff (
    input  logic clk,
    input  logic reset_n,
    input  logic d_i,
    output logic q_o
);
  logic q1;
  logic q2;
  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      {q2, q1} <= '0;
    end else begin
      {q2, q1} <= {q1, d_i};
    end
  end
  assign q_o = q2;
endmodule
