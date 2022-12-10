`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 12:01:44 AM
// Design Name: 
// Module Name: sevenSegUI
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


module sevenSegUI(
        output [6:0] seg,
        output dot,
        output [3:0] sel,
//        output minusLed,
        input clk,
        input [15:0] result
    );
    
    // Display 7 Seg
    wire [3:0] num3,num2,num1,num0;
    wire sel3,sel2,sel1,sel0;
    assign sel = {sel3,sel2,sel1,sel0};
    
    wire [15:0] resultQ;
    wire showQMinus;
    
    binaryToBCD btbQ(
        .bcd(resultQ),
        .isMinus(showQMinus),
        .number(result)
    );
    
    assign {num3,num2,num1,num0} = resultQ;
//    assign minusLed = showQMinus;
    
    quadSevenSeg sevenINST(
        seg,
        dot,
        sel0,
        sel1,
        sel2,
        sel3,
        num0,
        num1,
        num2,
        num3,
        clk
    );
endmodule
