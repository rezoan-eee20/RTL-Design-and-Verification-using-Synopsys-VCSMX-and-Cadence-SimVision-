//Behaviour Modeling of N-bit to M-Bit Shift Register(M>N)
`timescale 1 ns / 1 ns 
module Nshiftr(Clk,Clr,Ld,Sh,Di,D,Q);     
  parameter Nsize = 30;                                           
  parameter Msize = 50;                                            
  output [(Msize-1):0] Q;
  input [(Nsize-1):0] D;
  input Clk,Clr,Ld,Sh,Di;
  reg [(Msize-1):0] Q,Tm;                          
  always@(posedge Clk or Clr)
    begin
      if(Clr)  begin
        Tm= {Msize{1'b0}};
        Q= Tm;
      end 
      else  begin
        if(Ld)  begin
          Tm = {Msize{1'b1}};
          Tm = {Tm[(Msize-1):Nsize],D[(Nsize-1):0]};
          Q = Tm;
        end  
        else  begin
          if(Sh)  begin
            case(Di)
              1'b0 : Tm = {1'b0,Tm[(Msize-1):1]};     
              1'b1 : Tm = {Tm[(Msize-2):0],1'b0};     
              default : Tm = {1'b0,Tm[(Msize-1):1]};  
            endcase
            Q = Tm ;
          end
        end
      end
    end
endmodule
//-------------------------------------------------------------------------------
