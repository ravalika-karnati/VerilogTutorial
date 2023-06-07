`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 02:25:51 PM
// Design Name: 
// Module Name: subtractor_nbit
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


module subtractor_nbit
 #(parameter n = 10)
 (
    input [n-1:0] x, y,
    input cntrl,
    output [n-1:0] s,
    output c_out
    );
    
    wire [n-1:0] xored_y;
    
    generate
      genvar i;
      for ( i=0; i < n; i = i+1)
      begin: stage
         assign xored_y[i] = y[i] ^ cntrl;
       end
    endgenerate
    
    
    Generic_RCA #(.n(10)) RCA0(
         .x(x),
         .y(xored_y),
         .s(s),
         .c_in(cntrl),
         .c_out(c_out)
    
    );
         
endmodule
