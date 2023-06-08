`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 10:11:01 AM
// Design Name: 
// Module Name: Mux_4X1
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

module Mux_4X1_nbit
#(parameter n = 3)
(
    input [n-1:0] x, y, a, b,
    input [1:0] s,
    output reg [n-1:0] f
    );
    
    
    // procedural assignment in a behavioral mode
    always @(x, y, a, b, s) // executed when there ia change in the parameters in the sensitivity list
    begin 
        f = s[1] ? (s[0] ? a : b ): (s[0] ? x : y);
    end
 endmodule

module Mux_4X1_if
#(parameter n = 3)
(
    input [n-1:0] x, y, a, b,
    input [1:0] s,
    output reg [n-1:0] f
    );
    
    
    // procedural assignment in a behavioral mode
    always @(x, y, a, b, s) // executed when there ia change in the parameters in the sensitivity list
    begin 
    
    // f = s[1] ? (s[0] ? a : b ): (s[0] ? x : y);
       if (s == 2'b00)
          f = x;
       else if ( s== 2'b01)
          f = y;   
       else if ( s== 2'b10)
          f = a;  
       else if ( s== 2'b11)
          f = b;
       else    // make sure to add else
          f = 'bx;  
    end
 endmodule
 
 module Mux_4X1_case
#(parameter n = 3)
(
    input [n-1:0] x, y, a, b,
    input [1:0] s,
    output reg [n-1:0] f
    );
    
    
    // procedural assignment in a behavioral mode
    always @(x, y, a, b, s) // executed when there ia change in the parameters in the sensitivity list
    begin 
    
    // f = s[1] ? (s[0] ? a : b ): (s[0] ? x : y);
    case(s) 
      2'b00 : f = x;
      2'b01 : f = y;
      2'b10 : f = a;
      2'b11 : f = b;
      default: f = 'bx;
    endcase
    end
 endmodule
