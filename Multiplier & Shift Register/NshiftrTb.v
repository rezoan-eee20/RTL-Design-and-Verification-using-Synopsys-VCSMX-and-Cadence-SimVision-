//Test Bench of N-bit to M-Bit Shift Register(M>N)
`timescale 1 ns / 1 ns    
module NshiftrTb;
  //Constants Declaration(User Constraints) 
  parameter Pulse = 5;                                            //Pulse Width of the Clock
  parameter Dsize = 3;                                            //Input Vector Size
  parameter Qsize = 5;                                            //Output Vector Size
  parameter Dtot = 6;                                             //Total number of Test Vectors(Always even)
  reg [(Dsize-1): 0] Data [0:(Dtot-1)];                           //Array for Test Vector   
  initial Data= '{3'b101, 3'b011, 3'b001, 3'b100, 3'b111, 3'b110};  //Test Vectors 
  /*Use these above declarations as variables in your code, so that your code 
   is compactible to any number of bits by changing the User Constraints*/
  //1.wire and Register Declaration     

  //2.Instantiate the Unit Under Test (UUT)
     //2.1 Use defparam to alter the size of Input and Output

  //3.Clock Generation

  //4. Simulation Procedure-----------------------------------------
     //Instructions for Simualtion Procedure
        //4.1 Intialize the outputs to "string of zeros".
        //4.2 Run a loop of size equal to the total number of test Vectors given(Dtot)
        //4.3 For each test vector 
              //4.3.1 Load the input vector 
              //4.3.2 Perform Right shift for first (Dtot/2) test vectors and Left shift for remaining test vectors
              //4.3.3 The total number of shifts for each input vector is equal to the output vector size

endmodule
//------------------------------------------------------------------------------
