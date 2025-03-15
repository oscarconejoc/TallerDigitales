`timescale 1ns/1ps

module TBEje5 ();
    logic   [3:0]          A;
    logic   [3:0]          B;
    logic   [3:0]          ALUControl;
    logic                  ALUFlagIn;
    logic                  ALUFlags;
    logic   [3:0]          ALUResult;
    logic                  Cero;


    ALU #(.Ancho(4)) ALU1(
        .A              (A),
        .B              (B),
        .ALUControl     (ALUControl),
        .ALUFlagIn      (ALUFlagIn),
        .ALUFlags       (ALUFlags),
        .ALUResult      (ALUResult),
        .Z           (Cero)
    );

    initial begin
        A = 4'b0000;
        B = 4'b0000;
        ALUControl = 4'h0;
        ALUFlagIn = 0;

        #50
        A = 4'b0110;
        B = 4'b0010;

        #50
        ALUControl = 4'h1;

        #50
        ALUControl = 4'h2;

        #50
        ALUControl = 4'h3;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h3;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h4;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h4;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h5;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h5;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h6;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h7;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h8;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h9;
        ALUFlagIn = 0;


    end


endmodule