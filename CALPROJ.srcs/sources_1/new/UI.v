`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2022 09:55:55 PM
// Design Name: 
// Module Name: UI
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


module UI(
      output reg [11:0] rgb_reg,
      input p_tick,
      input [9:0] x, 
      input [9:0] y,
      input [15:0] aBCD,
      input [15:0] bBCD,
      input [15:0] resultBCD,
      input aShowMinus,
      input bShowMinus,
      input resultShowMinus,
      input [1:0] op,
      input isOverFlow,
      input isNaN
    );
    
    localparam DIGIT_WIDTH          = 50;
    localparam DIGIT_HEIGHT         = 100;
    localparam DISPLAY_OFFSET_X     = 50;
    
    reg [49:0] romFont [18*100-1:0]; 
    // 18 char (100 row per char) of 50 pixel
    initial begin
        $readmemb("font.mem",romFont);
    end 
    
    // 3 is Leftmost Bit
    
    wire [3:0] digit13,digit12,digit11,digit10;
    wire [3:0] digit23,digit22,digit21,digit20;
    wire [3:0] digit33,digit32,digit31,digit30;

    assign {digit13,digit12,digit11,digit10}=aBCD;
    assign {digit23,digit22,digit21,digit20}=bBCD;
    assign {digit33,digit32,digit31,digit30}=resultBCD;
    
    // 0 - 9
    // 10 - +
    // 11 - -
    // 12 - mul
    // 13 - divide
    // 14 - a
    // 15 - A
    // 16 - N
    // 17 - /
    // anyelse will display as blank :)

    always @(posedge p_tick)  begin
    
        // -------------------------------------- line 1 --------------------------------------------------------------//
        if(100 < y && y < 100+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[1000+aShowMinus*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 3
            if(DISPLAY_OFFSET_X+100 < x && x < DISPLAY_OFFSET_X+100+DIGIT_WIDTH && romFont[digit13*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+100+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[digit12*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+200+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[digit11*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+300+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[digit10*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+400+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
        
        // -------------------------------------- line 2 --------------------------------------------------------------//
        if(200+20 < y && y < 200+20+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[1000+bShowMinus*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 3
            if(DISPLAY_OFFSET_X+100 < x && x < DISPLAY_OFFSET_X+100+DIGIT_WIDTH && romFont[digit23*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+100+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[digit22*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+200+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[digit21*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+300+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[digit20*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+400+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OP
            if(DISPLAY_OFFSET_X+500 < x && x < DISPLAY_OFFSET_X+500+DIGIT_WIDTH && romFont[1000+op*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+500+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
        
        // -------------------------------------- line 3 --------------------------------------------------------------//
        if(isNaN && 300+40 < y && y < 300+40+DIGIT_HEIGHT) begin
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[16*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+200+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[14*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+300+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[16*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+400+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
        
        if(isOverFlow && 300+40 < y && y < 300+40+DIGIT_HEIGHT) begin
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[16*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+200+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[17*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+300+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[15*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+400+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
        
        if(!isNaN && !isOverFlow && 300+40 < y && y < 300+40+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[1000+resultShowMinus*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 3
            if(DISPLAY_OFFSET_X+100 < x && x < DISPLAY_OFFSET_X+100+DIGIT_WIDTH && romFont[digit33*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+100+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[digit32*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+200+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[digit31*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+300+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[digit30*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+400+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
    end
endmodule
