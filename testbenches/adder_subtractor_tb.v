`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 04:31:54 PM
// Design Name: 
// Module Name: adder_subtractor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_subtractor_tb(
    
    );
    
    // we don't need input and output but we replicate the inputs nad outputs from the original code
    // reg and wire are two datatypes in verilog
    // reg = store the data/ value = inputs as reg
    // wire are the just to look at them and not used to store = outputs
    
    
   //1. Declare local reg and wire identifiers  
    parameter n = 4;
    reg [n-1:0] x, y;
    reg cntrl;
    wire [n-1:0] s;
    wire [n-1:0] c_out, overflow;    

   //2. Instantiate the module under test
   subtractor_nbit #(.n(n)) UUT (
         .x(x),
         .y(y),
         .s(s),
         .cntrl(cntrl),
         .c_out(c_out),
         .overflow(overflow)
   );
   
//3.Specify a stopwatch to stop simulation
   initial  // like an always statement but doesn't run all the time. Runs only once.
   begin
      #40 $finish;
   end 

//4.Generate stimuli, using initial and always
  //initial = for combinational circuits
  // always = for sequential circuits 
  initial
  begin
    cntrl = 1'b0;
    x = 4'd5;
    y = 4'd6;
    
    #10
    cntrl = 1'b1;
    
    #10
    x = 4'd6;
    y = -4'd3;    
  end

 //5.Display the output response ( text or graphics or both)
 // responses will be displayed in the Tcl console
 // $ = are called system functions in verilog
   initial
   begin
      $monitor("time = %3d: x = %d \t y = %d \t cntrl = %d \t s = %3d \t c_out = %1b \t overflow = %1b", 
      $time, x, y, cntrl, s, c_out, overflow);
   end
endmodule
