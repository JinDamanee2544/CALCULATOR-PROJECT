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
    initial begin
        result = 0;
        isOverFlow = 0;
        //isUnderFlow = 0;
        isNaN = 0;
    end
    
    always@(a,b,op) begin
        result = 0;
        isOverFlow = 0;
        //isUnderFlow = 0;
        isNaN = 0;
        
        case(op)
            2'b00: result = a+b;
            2'b01: result = a-b;
            2'b10: result = a*b;
            2'b11: begin 
                if(b!=0)begin
                    result = a/b;    
                end
                else begin 
                    result = 9999;
                    isNaN = 1;
                end
            end
        endcase
        
        if(result>16'd9999) isOverFlow=1;
        if(result<-16'd9999) isOverFlow=1;
    end
endmodule

module testCalculator;
    reg [15:0] operator, operand;
    reg [1:0] op;
    wire [15:0] result;
    wire isNaN, isOverflow;
    
    reg clk = 0;
    
    calculator c(
        result, isNaN, isOverflow,
        op, operator, operand, clk
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
        operator = 1; operand = 0;
        op = 3;
        
        #10;
        operator = 8888; operand = 8888;
        op = 0;
        
        #10;
        operator = -9; operand = 3;
        op = 3;
        
        #10;
        operator = -23; operand = 44;
        op = 0;
        
        #10;
        op = 1;
        
        #10;
        op = 2;
        
        #10;
        
        $finish;
    end
endmodule