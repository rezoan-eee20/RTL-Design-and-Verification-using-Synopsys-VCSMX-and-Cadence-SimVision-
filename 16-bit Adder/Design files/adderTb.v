module adderTb();
reg clk;
reg [15:0] n1;
reg [15:0] n2;
wire [16:0]sum_i;
adder UUT(clk, n1, n2, sum_i);
initial begin
#0 clk =1'b0;
forever 
#5 clk= ~clk;
end

initial begin

#0 n1=16'd8; n2=16'd9;
#10 n1=16'd11; n2=16'd13; 
#10 n1=16'd10; n2=16'd17; 
#10 n1=16'd13; n2=16'd24; 
#10 n1=16'd27; n2=16'd35; 
#10 n1=16'd39; n2=16'd47; 
#10 n1=16'd57; n2=16'd75;
#10 n1=16'd77; n2=16'd81; 
#10 n1=16'd83; n2=16'd89; 
#10 n1=16'd91; n2=16'd93;
 
$finish;

end

endmodule
