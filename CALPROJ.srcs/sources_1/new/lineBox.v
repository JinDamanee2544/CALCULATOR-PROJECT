`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2022 03:09:23 PM
// Design Name: 
// Module Name: lineBox
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


module lineBox(
        output reg [11:0] rgb_reg,
        input [9:0] x,
        input [9:0] y,
        input [9:0] y_offset,
        input p_tick,
        input hasOP
    );
    
    localparam DIGIT_WIDTH          = 50;
    localparam DIGIT_HEIGHT         = 100;
    localparam DISPLAY_OFFSET_X     = 50;
//    localparam DISPLAY_OFFSET_Y   = 100;
    
    reg [49:0] romFont [1299:0]; 
    // 1300 row (100 row per char) of 50 pixel
    initial begin
        $readmemb("font.mem",romFont);
    end 
    
    // 3 is Leftmost Bit
    reg [15:0] OP,signA,signB,digit3,digit2,digit1,digit0;
    
    initial begin 
        digit3 = 0;
        digit2 = 1;
        digit1 = 2;
        digit0 = 3;
        signA = 13;
        signB = 14;
        OP = 13;
    end
    
    always @(posedge p_tick)  begin
        if(y_offset < 0 < y && y < y_offset+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[7*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+0])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 3
            if(DISPLAY_OFFSET_X+100 < x && x < DISPLAY_OFFSET_X+100+DIGIT_WIDTH && romFont[digit3*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+100])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 2 
            if(DISPLAY_OFFSET_X+200 < x && x < DISPLAY_OFFSET_X+200+DIGIT_WIDTH && romFont[digit2*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+200])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 1
            if(DISPLAY_OFFSET_X+300 < x && x < DISPLAY_OFFSET_X+300+DIGIT_WIDTH && romFont[digit1*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+300])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 0
            if(DISPLAY_OFFSET_X+400 < x && x < DISPLAY_OFFSET_X+400+DIGIT_WIDTH && romFont[digit0*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+400])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end
            else
            // OP
            if(hasOP && 500 < x && x < 500+DIGIT_WIDTH && romFont[7*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+500])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end
            else
            // OUTSIDE
            begin
                rgb_reg[3:0] = 0; // B
                rgb_reg[7:4] = 0; // G
                rgb_reg[11:8] = 0; // R
            end
        end
    end
endmodule
