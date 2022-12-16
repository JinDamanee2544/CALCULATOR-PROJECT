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
    input wire clk,
    input wire rx,
    input wire tx 
);
    
    parameter CLOCK_RATE = 100000000;
    parameter BAUD_RATE = 9600;
    
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
    
    integer idx;
    integer i, temp_a, temp_b;
    integer degree, digit_cv, num_sign;  // digit conversion for translatiing ACSII
    reg [87:0] storage;
    
    always @(posedge clk) begin
        if (rxDone == 1) begin
            if (out == 8'b00001101) begin
                // change a, b, and ops
                
                // translate a
                if (storage[7:0] == negative) begin
                    num_sign = -1;
                end
                else begin
                    num_sign = 1;
                end
                
                degree = 1;
                for (i = 1; i < 5; i = i +1) begin
                    case (storage[i*8 +: 8])
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
                    a = a + digit_cv * degree;
                    degree = degree * 10;
                end
                a = a * num_sign;
                
                // translate op
                case (storage[48:40])
                    positive: op <= 2'b00;
                    negative: op <= 2'b01;
                    mul: op <= 2'b10;
                    div: op <= 2'b11;
                endcase
                
                // translate b
                if (storage[55:48] == negative) begin
                    num_sign = -1;
                end
                else begin
                    num_sign = 1;
                end
                
                degree = 1;
                for (i = 7; i < 11; i = i +1) begin
                    case (storage[i*8 +: 8])
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
                    b = b + digit_cv * degree;
                    degree = degree * 10;
                end
                b = b * num_sign;
                
            end
            else begin
                storage[idx*8 +: 8] <= out;
            end
            
            if (idx == 11) begin
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
        temp_a = 0;
        temp_b = 0;
        idx = 0;
        op = 0;
        in = 0;
        rxEn = 1;
        txEn = 1;
    end
endmodule