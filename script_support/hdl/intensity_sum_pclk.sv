module intensity_sum_pclk (
    input logic         clk,
	input logic         resetn,
    input logic [31:0]  data_i,
	input logic         eof_i,
    output logic [31:0] data_o
);

logic eof_sy_fe;
logic eof_sy_q;

vb_sync2ff u_vb_sync2ff (
    .clk(clk),
    .reset_n(resetn),
    .d_i(eof_i),
    .q_o(eof_sy)
);

always_ff @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
        eof_sy_q <= '0;
    end else begin
        eof_sy_q <= eof_sy;
    end
end

assign eof_sy_fe = !eof_sy && eof_sy_q;
always_ff @ (posedge clk) begin
    if (eof_sy_fe) begin
        data_o <= data_i;
    end
end

endmodule