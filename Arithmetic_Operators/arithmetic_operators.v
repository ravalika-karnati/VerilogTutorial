`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 03:23:00 PM
// Design Name: 
// Module Name: arithmetic_operators
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


module arithmetic_operators
#(parameter n = 4)
   (
     input [n-1:0] x, y,
     output[n-1:0] s,
     output c_out, overflow
     
    );
    
    wire [n:0] sum;
    
    //assign s = x + y;
    //assign sum = {1'b0, x} + {1'b0, y}; 
    // concatination is not required because in verilog it expands all the opeartors to the Max value
    assign sum = x + y; 
    assign s = sum[n-1:0];
    assign c_out = sum[n];
    
endmodule
