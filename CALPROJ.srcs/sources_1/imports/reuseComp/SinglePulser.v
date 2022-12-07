`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compsely: 
// Engineer: 
// 
// Create Date: 09/13/2022 12:00:20 AM
// Design Name: 
// Module Name: SinglePulser
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


module SinglePulser(
    output reg pulse,
    input signal,
    input clk
    );
    reg state;
    initial begin // 0 : not press 1 : Still press
        state = 0;
        pulse = 0;
    end 
    wire [1:0] mealy;
    assign mealy = {state,signal}; // concat to 2 bit state
    always@(posedge clk) begin
        pulse = 0; // every clk reset pulse cuz it's last only 1 clk
        case (mealy)
            2'b00 : state = 0;  // not press state & signal low => Still in not press state
            2'b01 : begin       // not press state & signal high => set to press state seld start a pulse
                state = 1;
                pulse = 1;
                end 
            2'b10 : state = 0;  // press state & signal low => Return to not press state 
                                                            // seld wait next posedge to clear pulse (make it always 1 clk)
            2'b11 : state = 1;  // press state & signal high => Still in press state
        endcase
    end
endmodule
