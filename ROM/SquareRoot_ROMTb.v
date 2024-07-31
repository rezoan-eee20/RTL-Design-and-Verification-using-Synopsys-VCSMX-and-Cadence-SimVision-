module SquareRoot_ROMTb;
  	reg [3:0] n ;
	
	wire [11:0] square_root;
	integer i;

	squareRoot_ROM (n, sq_root);

	initial 
	begin
	  n=0;
    	   for(i=0; i<16;i=i+1) begin
		          #5 n=i;
        end
   end

endmodule

