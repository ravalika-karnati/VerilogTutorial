`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 06:38:04 PM
// Design Name: 
// Module Name: decoder_2x4_en
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


module decoder_2x4_en(
     input [1:0] x, en,
     output reg [0:3] y
    );
    
    always @(x, en)
    begin
      if (en) begin
        y = 4'b0000;
        y[x] = 1'b1;
      end 
      else
        y = 4'b0000;    
    end
endmodule

module decoder_2x4_en_case(
     input [1:0] x, en,
     output reg [0:3] y
    );
    
    always @(x, en)
    begin
      if (en) begin
        case (x)
         2'b00 : y[0] = 1'b1;
         2'b01 : y[1] = 1'b1;
         2'b10 : y[2] = 1'b1;
         2'b11 : y[3] = 1'b1;
         default: y = 4'b0000; 
        endcase  
      end 
      else
        y = 4'b0000;    
    end
endmodule
