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

module uartBuffer(
    output reg[15:0] a,
    output reg[15:0] b,
    output reg[1:0] op,
    output reg[15:0] idx_reg,
    input wire clk,
    input wire rx,
    input wire tx
);

    parameter CLOCK_RATE = 100000000;
    parameter BAUD_RATE = 9600;

    parameter enter = 8'b00001101;
    parameter newline = 8'b00001010;

    parameter positive = 8'b00101011;
    parameter negative = 8'b00101101;
    parameter mul = 8'b00101010;
    parameter div = 8'b00101111;

    parameter n0 = 8'b00110000;
    parameter n1 = 8'b00110001;
    parameter n2 = 8'b00110010;
    parameter n3 = 8'b00110011;
    parameter n4 = 8'b00110100;
    parameter n5 = 8'b00110101;
    parameter n6 = 8'b00110110;
    parameter n7 = 8'b00110111;
    parameter n8 = 8'b00111000;
    parameter n9 = 8'b00111001;

    reg rxEn = 1; wire [7:0] out; wire rxDone; wire rxBusy; wire rxErr;
    wire tx; reg txEn; reg txStart; reg in; wire txDone; wire txBusy;
    Uart8# (
    .CLOCK_RATE(CLOCK_RATE),
    .BAUD_RATE(BAUD_RATE)
    ) uart(
        .clk(clk),

        .rx(rx),
        .rxEn(rxEn),
        .out(out),
        .rxDone(rxDone),
        .rxBusy(rxBusy),
        .rxErr(rxErr),

        .tx(tx),
        .txEn(txEn),
        .txStart(txStart),
        .in(in),
        .txDone(txDone),
        .txBusy(txBusy)
    );

    integer idx, i;
    integer degree, digit_cv, num_sign; // digit conversion for translatiing ACSII
    always @(posedge clk) begin
        idx_reg = idx;
    end

    always @(posedge rxDone) begin

        // change a, b, and ops
        if (out == newline || out == enter) begin
            a = 0;
            b = 0;
            op = 0;
            idx = 0;
        end
        else begin
            // translate a
            if (idx == 0) begin
                if (out == negative) begin
                    a = -a;
                end
                else begin
                    a = a;
                end
            end
            else if (idx >= 1 && idx <= 4) begin
                case (out)
                    n0: digit_cv = 0;
                    n1: digit_cv = 1;
                    n2: digit_cv = 2;
                    n3: digit_cv = 3;
                    n4: digit_cv = 4;
                    n5: digit_cv = 5;
                    n6: digit_cv = 6;
                    n7: digit_cv = 7;
                    n8: digit_cv = 8;
                    n9: digit_cv = 9;
                endcase
                case (idx)
                    1: a = a + digit_cv*1000;
                    2: a = a + digit_cv*100;
                    3: a = a + digit_cv*10;
                    4: a = a + digit_cv*1;
                endcase
            end
            else if (idx == 5) begin
                case(out)
                    positive: op = 0;
                    negative: op = 1;
                    mul: op = 2;
                    div: op = 3;
                endcase
            end
            else if (idx == 6) begin
                if (out == negative) begin
                    b = -b;
                end
                else begin
                    b = b;
                end
            end
            else if (idx >= 7 && idx <= 10) begin
                case (out)
                    n0: digit_cv = 0;
                    n1: digit_cv = 1;
                    n2: digit_cv = 2;
                    n3: digit_cv = 3;
                    n4: digit_cv = 4;
                    n5: digit_cv = 5;
                    n6: digit_cv = 6;
                    n7: digit_cv = 7;
                    n8: digit_cv = 8;
                    n9: digit_cv = 9;
                endcase
                case (idx)
                    7: b = b + digit_cv*1000;
                    8: b = b + digit_cv*100;
                    9: b = b + digit_cv*10;
                    10: b = b + digit_cv*1;
                endcase
            end

            if (idx == 10) begin
                idx = 0;
            end
            else begin
                idx = idx + 1;
            end
        end

    end

    initial begin
        a = 0;
        b = 0;
        idx = 0;
        op = 0;
        in = 0;
        rxEn = 1;
        txEn = 1;
    end
endmodule