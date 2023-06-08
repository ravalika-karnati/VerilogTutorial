`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 04:20:20 PM
// Design Name: 
// Module Name: mux_generic_1bit
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


module mux_generic_1bit
#(parameter NUM_INPUTS = 5)
(
   input [NUM_INPUTS-1:0] x,
   input [$clog2(NUM_INPUTS)-1:0] S,
   output reg f

    );
    
    integer k;
    
    always @(x, s)
    begin
      f = 'bx;
      for( i =0; i <= NUM_INPUTS; i = i+1) begin
        if ( i == s) begin
          f = x[i];
        end
      end  
    end
endmodule
