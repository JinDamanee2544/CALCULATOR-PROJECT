`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 12:04:19 AM
// Design Name: 
// Module Name: main
// Project Name:  Calculator and its display :)
// Target Devices: Basys3 
// Tool Versions: Just Vivaldo 
// Description: Poor Final Project 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    output wire [3:0] vgaRed,
    output wire [3:0] vgaGreen,
    output wire [3:0] vgaBlue,
    output wire Hsync,
    output wire Vsync,
    output [6:0] seg,
    output dot,
    output [3:0] sel,
    input [15:0] sw,
    output RsTx, //uart
    input RsRx, //uart
    input BTNC,
    input BTNL,
    input BTNU,
    input BTNR,
    input BTND,
//    input [15:0] led,
    input sysCLK
);
    // -------------------------- CLOCK DIV -------------------------- //
    clockDivComp #(19) clkComp (
        .divCLK(finalCLK),
        .clk(sysCLK)
    );
    
    // UART RxTx
    wire RsTx;
    wire RsRx;
    // --------------------------- UART --------------------------------- //
    
    wire [15:0] a,b;
    wire [1:0] op; // + - / *
    
    uartBuffer uartBuf(
        .a(a), .b(b), .op(op), .clk(sysCLK), .rx(RsRx), .tx(RsTx)
    );
    
    // --------------------------  ALU ---------------------------------- //
    
    wire isNaN = 0,isOverFlow = 0;
    wire [15:0] result;

    calculator calINST(
        .result(result),
        .isNaN(isNaN),
        .isOverFlow(isOverFlow),
        // UART input will insert here
        // Only 2 Complement 16 bit
        .a(a),                
        .b(b),          
        .op(op)             
    );

    // Display
    wire [3:0] num3,num2,num1,num0;
    wire sel3,sel2,sel1,sel0;
    assign sel = {sel3,sel2,sel1,sel0};

    assign {num3,num2,num1,num0} = result;
    
    // -------------------------- Display VGA -------------------------- //
    vga vgaInst(
        .rgb({vgaRed, vgaGreen, vgaBlue}),
        .hsync(Hsync),
        .vsync(Vsync),
        .result(result),
        .clk(sysCLK),
        .a(a),
        .b(b),
        .op(op),
        .isNaN(isNaN),
        .isOverFlow(isOverFlow)
    );
    
    // -------------------------- Display SevenSegment (For Testing) -------------------------- //
    // In this Component, It do not have NaN, isOverFlow and it show only magnitude of result (No Sign)
    // Please do not be serious with this component
    // Regardly, TA
    sevenSegUI sevUiINST(
        .seg(seg),
        .dot(dot),
        .sel(sel),
//        .minusLed(led[0]),
        .result(result),
        .clk(finalCLK)
    );
    
endmodule
