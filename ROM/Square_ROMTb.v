module Square_ROMTb;
  	reg [3:0] n ;
	reg sign;
	wire [7:0] square ;
	integer i;

	Square_ROM UUT(.n(n), .sign(sign), .square(square));

	initial 
	begin
	#0 sign=0;n=0;
    	   for(i=0; i<16;i=i+1) begin
		#5 n=i;
           end
        
	
	#5 sign=1;
    	   for(i=0; i<16;i=i+1) begin
		#5 n=i;
           end
        end

endmodule

