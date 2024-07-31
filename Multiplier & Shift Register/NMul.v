//Behaviour Modeling of N-bit * N-bit Multiplier
`timescale 1 ns / 1 ns   
module NMul(Clk,Clr,A,B,R);     
  parameter Nsize = 50;                                          
  output [((2*Nsize)-1):0] R;
  input [(Nsize-1):0] A,B;
  input Clk,Clr;
  reg [((2*Nsize)-1):0] R,Tm;                             
  always@(posedge Clk or Clr)
  begin
    if(Clr)  begin
      Tm = {(2*Nsize){1'b0}};
      R = Tm;
    end 
    else begin
      Tm = A * B;
      R = Tm;
    end  
  end
endmodule
//-------------------------------------------------------------------------------
