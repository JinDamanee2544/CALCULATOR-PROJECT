
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
    
    localparam DIGIT_WIDTH       = 50;
    localparam DIGIT_HEIGHT       = 100;
    localparam DISPLAY_OFFSET_X     = 100;
    localparam DISPLAY_OFFSET_Y     = 100;
    
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
   
    
    // 0 - 9
    // a - 16'ha
    // A - 16'hb
    // N - 16'hc
    // - - 16'hd
    // + - 16'he
    integer font_x,font_y;
    
    always @(posedge p_tick)  begin
        // line 1
        if(100 < y && y < 100+DIGIT_HEIGHT) begin
            // SIGN
            if(0 < x && x < 0+DIGIT_WIDTH && romFont[signA*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+0])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 3
            if(100 < x && x < 100+DIGIT_WIDTH && romFont[digit3*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+100])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 2 
            if(200 < x && x < 200+DIGIT_WIDTH && romFont[digit2*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+200])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 1
            if(300 < x && x < 300+DIGIT_WIDTH && romFont[digit1*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+300])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 0
            if(400 < x && x < 400+DIGIT_WIDTH && romFont[digit0*100+y-DIGIT_HEIGHT][DIGIT_WIDTH-x+400])
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
        else
        // line 2
        if(200+20 < y && y < 200+20+DIGIT_HEIGHT) begin
            // SIGN
            if(0 < x && x < 0+DIGIT_WIDTH && romFont[signB*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+0])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 3
            if(100 < x && x < 100+DIGIT_WIDTH && romFont[digit3*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+100])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 2 
            if(200 < x && x < 200+DIGIT_WIDTH && romFont[digit2*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+200])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 1
            if(300 < x && x < 300+DIGIT_WIDTH && romFont[digit1*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+300])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 0
            if(400 < x && x < 400+DIGIT_WIDTH && romFont[digit0*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+400])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end
            else
            // OP
            if(500 < x && x < 500+DIGIT_WIDTH && romFont[OP*100+y-120-DIGIT_HEIGHT][DIGIT_WIDTH-x+500])
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
        else
        // line 3
        if(300+40 < y && y < 300+40+DIGIT_HEIGHT) begin
            // SIGN
            if(0 < x && x < 0+DIGIT_WIDTH && romFont[signA*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+0])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 3
            if(100 < x && x < 100+DIGIT_WIDTH && romFont[digit3*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+100])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 2 
            if(200 < x && x < 200+DIGIT_WIDTH && romFont[digit2*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+200])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 1
            if(300 < x && x < 300+DIGIT_WIDTH && romFont[digit1*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+300])
            begin
                rgb_reg[3:0] = 15; // B
                rgb_reg[7:4] = 15; // G
                rgb_reg[11:8] = 15; // R
            end 
            else
            // DIGIT 0
            if(400 < x && x < 400+DIGIT_WIDTH && romFont[digit0*100+y-240-DIGIT_HEIGHT][DIGIT_WIDTH-x+400])
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
    // set output to VGA
    assign rgb = (video_on) ? rgb_reg : 12'h000;
endmodule