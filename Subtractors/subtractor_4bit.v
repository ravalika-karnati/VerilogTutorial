`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 02:13:44 PM
// Design Name: 
// Module Name: subtractor_4bit
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


module subtractor_4bit(
    input [3:0] x, y,
    input cntrl,
    output [3:0] s,
    output c_out
    );
    
    wire [3:0] xored_y;
    assign xored_y[0] = y[0] ^ cntrl;
    assign xored_y[1] = y[1] ^ cntrl;
    assign xored_y[2] = y[2] ^ cntrl;
    assign xored_y[3] = y[3] ^ cntrl;
    
    rca_4bit RCA0(
         .x(x),
         .y(xored_y),
         .s(s),
         .c_in(cntrl),
         .c_out(c_out)
    
    );
    
       
endmodule
