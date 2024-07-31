//Test Bench of  of N-bit * N-bit Multiplier
`timescale 1 ns / 1 ns    
module NMulTb;
  //Constants Declaration(User Constraints) 
  parameter Pulse = 5;                                            //Pulse Width of the clock
  parameter Isize = 2;                                            //Input vector size
  parameter Max = (2**Isize)-1;                                   //Maximum Decimal Value of Test vector.   
  integer i,j;/*Use these above declarations as variables in your code, so that your code 
  is compactible to any number of bits by changing the User Constraints*/
  //1.wire and Register Declaration          
reg Clk,Clr;
reg [(Isize-1):0] A,B;
wire [((2*Isize)-1):0] R;
  NMul UUT(.Clk(Clk), .Clr(Clr),.A(A),.B(B), .R(R));//2.Instantiate the Unit Under Test (UUT)
//2.1 Use defparam to alter the size of Input and Output
defparam UUT.Nsize = Isize;
//3.Clock Generation 
 initial begin
  Clk=0;
 forever begin
  #5 Clk=~Clk;
 end
 end
  //4. Process for Simulation Vectors
     //Instructions for Simualtion Procedure
        //4.1 Run two loops for A,B (1 to Max) and multiply them
 initial begin
      for (i=1; i<=Max; i=i+1)begin
            A=i;
            Clr=1;
          for (j=1; j<=Max; j=j+1)begin
             B=j;      
        //4.2 Intialize the outputs to "string of zeros" before each multiplication 
          end
      end
 end       
        
endmodule
//------------------------------------------------------------------------------
