`timescale 1ns/1ps

module cpu_tb ();

    logic        clk;
    logic        rst;
    
    logic [31:0] Result;
    logic [31:0] InstrF;
    logic [31:0] PCNext;
    logic [31:0] PCPlus4;
    logic [31:0] PCF;

    cpu cpu_1 (

        .clk(clk),
        .rst(rst),
        .Result(Result),
        .InstrF(InstrF),
        .PCNext(PCNext),
        .PCPlus4(PCPlus4),
        .PCF(PCF)
    );

    initial begin
        rst = 1;
        clk = 0;
        #50;
        rst = 0;
      
    end

    initial begin
        clk = 0;
        PCNext = 32'b1;
        forever #10 begin
            clk = !clk;
        end
    end

endmodule