`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AMD Copycat
// Engineer: 
// 
// Create Date: 12/07/2022 11:32:06 AM
// Design Name: 
// Module Name: calculator
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


module calculator(
    output reg signed [15:0] result,
    output reg isNaN,
    output reg isOverFlow,
    //output reg isUnderFlow,
    input [1:0] op,
    input [15:0] a,
    input [15:0] b

);

    reg signed [15:0] temp_a, temp_b;
    integer div_sign;

    initial begin
        result = 0;
        isOverFlow = 0;
        isNaN = 0;
        temp_a = 0;
        temp_b = 0;
        div_sign = 1;
    end

    always@(a,b,op) begin
        case(op)
            2'b00: begin
                result = a+b;
                isNaN = 0;
            end
            2'b01: begin
                result = a-b;
                isNaN = 0;
            end
            2'b10: begin
                result = a*b;
                isNaN = 0;
            end
            2'b11: begin
                div_sign = 1;
                if (b == 0) begin
                    result = 9999;
                    isNaN = 1;
                end
                else begin
                    isNaN = 0;
                    if (a < 0) begin
                        temp_a = -a;
                        div_sign = -div_sign;
                    end
                    else begin
                        temp_a = a;
                    end
                    if (b < 0) begin
                        div_sign = -div_sign;
                        temp_b = -b;
                    end
                    else begin
                        temp_b = b;
                    end
                    result = temp_a / temp_b;
                    result = div_sign * result;
                end
            end
        endcase

        // check overflow
        if(result > 9999) begin
            isOverFlow = 1;
        end
        else if (result < -9999) begin
            isOverFlow = 1;
        end
        else begin
            isOverFlow = 0;
        end
    end
endmodule

module testCalculator;
    reg [15:0] operator, operand;
    reg [1:0] op;
    wire [15:0] result;
    wire isNaN, isOverflow;

    reg clk = 0;

    calculator c(
        .result(result), .isNaN(isNaN), .isOverFlow(isOverflow),
        .op(op), .a(operator), .b(operand)
    );

    always #2 clk = ~clk;

    initial begin

        $monitor("time %t | {a=%d b=%d op=%b} -> {result=%d nan=%b overflow=%b}", $time, operator, operand, op, result, isNaN, isOverflow);

        operator = 13; operand = 3;
        op = 0;
        #10;
        op = 1;
        #10;
        op = 2;
        #10;
        op = 3;
        #10;

        operator = 21; operand = -3;
        op = 3;
        #10;

        op = 2;
        operator = 3; operand = 7;
        #10

        operator = 9999; operand = 1;
        op = 0;
        #10;

        operator = -9999; operand = -1;
        op = 0;
        #10;

        operator = 1; operand= 2;
        op = 0;
        #10;

        operator = -9999; operand= -9999;
        op = 0;
        #10

        operator = 6; operand= 5;
        op = 2;
        #10

        operator = 8; operand= 4;
        op = 2;
        #10

        operator = 1; operand= -2;
        op = 0;
        #10
        $finish;
    end
endmodule