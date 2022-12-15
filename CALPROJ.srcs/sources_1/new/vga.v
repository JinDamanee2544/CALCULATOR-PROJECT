
module vga(
    output [11:0] rgb, //  VGA COLOR R G B
    output hsync, vsync,
    input clk,
    input [15:0] result,
    input [15:0] a,
    input [15:0] b,
    input [1:0] op,
    input isNaN,isOverFlow
);
    // ---------------------------- VGA CONFIG ----------------------------------------- //
    parameter WIDTH = 640;
    parameter HEIGHT = 480;

    wire [11:0] rgb_reg; // register for Basys 2 8-bit RGB DAC 
    reg reset = 0;
    wire [9:0] x, y;
    wire video_on; // video status output from vga_sync to tell when to route out rgb signal to DAC
    wire p_tick;

    vga_sync vga_sync_unit (
        .clk(clk),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .video_on(video_on),
        .p_tick(p_tick),
        .x(x),
        .y(y)
    );
    // ---------------------------- BCD Converting ----------------------------------------- //
    
    wire [15:0] aBCD,bBCD,resultBCD;
    wire aShowMinus,bShowMinus,resultShowMinus;
    binaryToBCD btb1(
        .bcd(aBCD),
        .number(a),
        .isMinus(aShowMinus)
    );
    binaryToBCD btb2(
        .bcd(bBCD),
        .number(b),
        .isMinus(bShowMinus)
    );
    binaryToBCD btb3(
        .bcd(resultBCD),
        .number(result),
        .isMinus(resultShowMinus)
    );
    
    // ---------------------------- VGA UI ----------------------------------------- //
    
    UI uiINST(
        .aBCD(aBCD),
        .bBCD(bBCD),
        .resultBCD(resultBCD),
        .aShowMinus(aShowMinus),
        .bShowMinus(bShowMinus),
        .resultShowMinus(resultShowMinus),
        .isNaN(isNaN),
        .isOverFlow(isOverFlow),
        .op(op),
        .x(x),
        .y(y),
        .p_tick(p_tick),
        .rgb_reg(rgb_reg)
    );
    
    // set output to VGA
    assign rgb = (video_on) ? rgb_reg : 12'h000;
endmodule