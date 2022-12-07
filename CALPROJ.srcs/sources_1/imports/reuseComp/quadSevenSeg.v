`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compsely: 
// Engineer: 
// 
// Create Date: 09/04/2022 06:05:14 PM
// Design Name: 
// Module Name: quadSevenSeg
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


module quadSevenSeg(
    output [6:0] seg,
    output dp,
    output sel0,
    output sel1,
    output sel2,
    output sel3,
    input [3:0] num0, // most right
    input [3:0] num1,
    input [3:0] num2,
    input [3:0] num3, // most left
    input clk
    );
    
    reg [1:0] ns; // next stage
    reg [1:0] ps; // present stage
    reg [3:0] select; // which 7seg is active
    
    reg [3:0] hexIn;
    wire [6:0] segments;
    assign seg=segments;
    
    hexTo7segment segDecode(segments,hexIn);
    assign dp=1; // dot point corresponse with activated sel
    assign {sel3,sel2,sel1,sel0}=~select;

    // state trselsition every clock
    always @(posedge clk)
        ps=ns;
    
    // 3 below sequences work parallelly
    always @(ps) 
        ns=ps+1;
    
    always @(ps)
        case(ps)
            2'b00: select=4'b0001;
            2'b01: select=4'b0010;
            2'b10: select=4'b0100;
            2'b11: select=4'b1000;
        endcase
    
    always @(ps)
        case(ps)
            2'b00: hexIn=num0;
            2'b01: hexIn=num1;
            2'b10: hexIn=num2;
            2'b11: hexIn=num3;
        endcase
    
endmodule