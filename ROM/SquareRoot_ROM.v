module squareRoot_ROM (n, sq_root) ;
	input [3:0] n ; // Unsigned number.
	output [11:0] sq_root ; // Result = Square root of n.
	reg [11:0] sq_root ; // Msb 2 bits (sq_root_int)is the integer part and the
	// other bits (sq_root_dp) are after the decimal point.
	wire [1:0] sq_root_int ;
	wire [9:0] sq_root_dp ;
	always @ (n)
	begin
		case (n) // Output "square root" .
			0 :sq_root <= 12'b00_0000000000;
			1 :sq_root <= 12'b01_0000000000;
			2 :sq_root <= 12'b01_0110100111;
			3 :sq_root <= 12'b01_1011101101;
			4 :sq_root <= 12'b10_0000000000;
			5 :sq_root <= 12'b10_0011110001;
			6 :sq_root <= 12'b10_0111001011;
			7 :sq_root <= 12'b10_1010010100;
			8 :sq_root <= 12'b10_1101001111;
			9 :sq_root <= 12'b11_0000000000;
			10 :sq_root <=12'b11_0010100101;
			11 :sq_root <=12'b11_0101000011;
			12 :sq_root <=12'b11_0111011011;
			13 :sq_root <=12'b11_1001101011;
			14 :sq_root <=12'b11_1011110110;
			15 :sq_root <=12'b11_1101111100;
			default :
			sq_root <= 12'b00_0000000000 ; // Clear the result.
		endcase
	end
	assign sq_root_int = sq_root [11:10] ;
	assign sq_root_dp = sq_root [9:0];
endmodule
