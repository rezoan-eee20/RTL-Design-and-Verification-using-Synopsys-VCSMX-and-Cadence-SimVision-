module adder(clk, n1, n2, sum_i) ;
input clk ;
input [15:0] n1 ;
input [15:0] n2 ;
output [16:0] sum_i ;
reg [16:0] sum_i ;
wire [16:0] sum_i_next ;
assign sum_i_next = {n1[15],n1}+{n2[15],n2}; // Add after sign extension - Result (i).
always @ (posedge clk)
// Pipeline 1, clk (1), register final result (i).
begin
sum_i <= sum_i_next;
end
endmodule
