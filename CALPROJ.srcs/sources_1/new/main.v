`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 12:04:19 AM
// Design Name: 
// Module Name: main
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


module main(
    output [6:0] seg,
    output dot,
    output [3:0] sel,
    input [15:0] sw,
    input BTNC,
    input BTNL,
    input BTNU,
    input BTNR,
    input BTND,
    input sysCLK
);
    // CLOCK DIV
    clockDivComp #(19) clkComp (
        .divCLK(finalCLK),
        .clk(sysCLK)
    );

    // SINGLE PULSER
    wire enter,plus,minus,mul,div;
    SinglePulser SP1(
        .pulse(enter),
        .signal(BTNC),
        .clk(finalCLK)
    );
    SinglePulser SP2(
        .pulse(plus),
        .signal(BTNL),
        .clk(finalCLK)
    );
    SinglePulser SP3(
        .pulse(minus),
        .signal(BTNU),
        .clk(finalCLK)
    );
    SinglePulser SP4(
        .pulse(mul),
        .signal(BTNR),
        .clk(finalCLK)
    );
    SinglePulser SP5(
        .pulse(div),
        .signal(BTND),
        .clk(finalCLK)
    );

    wire [15:0] a = 16'd3;
    wire [15:0] b = -16'd5;
    wire isNaN,isOverFlow;
    wire [15:0] result;
    
    // TEST CAL
    calculator calINST(
        .result(result),
        .isNaN(isNaN),
        .isOverFlow(isOverFlow),
        .a(a),
        .b(b),
        .op(sw[1:0]),
        .enter(enter)
    );

    // Display 
    wire [3:0] num3,num2,num1,num0;
    wire sel3,sel2,sel1,sel0;
    assign sel = {sel3,sel2,sel1,sel0};

    assign {num3,num2,num1,num0} = result;

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
        finalCLK
    );
endmodule
