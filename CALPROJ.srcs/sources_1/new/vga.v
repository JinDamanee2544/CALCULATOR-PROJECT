
module vga(
    output wire [11:0] rgb, //  VGA COLOR R G B
    output wire hsync, vsync,
    input wire clk,
    input wire [15:0] result
);
    parameter WIDTH = 640;
    parameter HEIGHT = 480;

    reg [11:0] rgb_reg; // register for Basys 2 8-bit RGB DAC 
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
    
    // --------------------------------------------------------------------------------------- //
    
    localparam DIGIT_WIDTH          = 50;
    localparam DIGIT_HEIGHT         = 100;
    localparam DISPLAY_OFFSET_X     = 50;
    
    reg [49:0] romFont [18*100-1:0]; 
    // 18 char (100 row per char) of 50 pixel
    initial begin
        $readmemb("font.mem",romFont);
    end 
    
    // 3 is Leftmost Bit
    reg [15:0] OP,signA,signB;
    reg [15:0] digit13,digit12,digit11,digit10;
    reg [15:0] digit23,digit22,digit21,digit20;
    reg [15:0] digit33,digit32,digit31,digit30;

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

    initial begin 
        digit13 = 0;
        digit12 = 1;
        digit11 = 2;
        digit10 = 3;
        
        digit23 = 10;
        digit22 = 11;
        digit21 = 12;
        digit20 = 13;
        
        digit33 = 14;
        digit32 = 15;
        digit31 = 16;
        digit30 = 17;
        
        signA = 10;
        signB = 11;
        OP = 12;
    end
    
    always @(posedge p_tick)  begin
        // line 1
        if(100 < y && y < 100+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[signA*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
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
        
        // line 2
        if(200+20 < y && y < 200+20+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[signB*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
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
            if(DISPLAY_OFFSET_X+500 < x && x < DISPLAY_OFFSET_X+500+DIGIT_WIDTH && romFont[OP*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+500+DISPLAY_OFFSET_X])
                rgb_reg = 12'hfff;
            else
            // OUTSIDE
                rgb_reg = 12'h000;
        end
        
        // line 3
        if(300+40 < y && y < 300+40+DIGIT_HEIGHT) begin
            // SIGN
            if(DISPLAY_OFFSET_X < x && x < DISPLAY_OFFSET_X+DIGIT_WIDTH && romFont[signA*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+DISPLAY_OFFSET_X])
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
    // set output to VGA
    assign rgb = (video_on) ? rgb_reg : 12'h000;
endmodule