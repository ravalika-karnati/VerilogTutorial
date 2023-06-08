`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 06:24:04 PM
// Design Name: 
// Module Name: decorder_2x4
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


module decorder_2x4(
     input [1:0] x,
     output reg [0:3] y 
    );
    
    always @(x)
    begin
        y = 4'b0000;
      if (x == 2'b00)
         y[0] = 1'b1;
      else if (x == 2'b01)
         y[1] = 1'b1;  
      else if (x == 2'b10)
         y[2] = 1'b1;  
      else if (x == 2'b11)
         y[3] = 1'b1;
      else
         y = 4'b0000;     
    end
endmodule


module decorder_2x4_case(
     input [1:0] x,
     output reg [0:3] y
    );
    
    always @(x)
    begin
        y = 4'b0000;
     case (x)
       2'b00 : y[0] = 1'b1;
       2'b01 : y[1] = 1'b1;
       2'b10 : y[2] = 1'b1;
       2'b11 : y[3] = 1'b1;
       default: y = 4'b0000; 
     endcase    
    end
endmodule

module decorder_2x4_case2(
     input [1:0] x,
     output reg [0:3] y  //
    );
    
    always @(x)
    begin
        y = 4'b0000;
        y[x] = 1'b1;     
    end
endmodule


