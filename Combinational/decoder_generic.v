`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 06:44:12 PM
// Design Name: 
// Module Name: decoder_generic
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


module decoder_generic
#(parameter N = 3)
(
     input [N-1:0] x,
     input en,
     output [0:(2 ** N)-1] y
    
    );
    
    integer i;
    
    always @(x, en)
    begin
    
      y = 'b0;
    if (en) begin
      for (i=0; i < N; i = i+1)
         y[i] = 1'b1;
    end
    else
        y = 'b0;
    end
endmodule

