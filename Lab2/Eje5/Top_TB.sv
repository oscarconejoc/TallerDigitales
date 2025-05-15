`timescale 1ns/1ps

module Top_TB ();
    logic                  clk;         
    logic                  rst;
    logic   [3:0]          ALUbotones;
    logic                  CambioModo;
    logic muxctrl;
    logic WEreg;
    logic WElfsr;
    logic [4:0] addr_rd;
    logic [4:0] addr_rs1;
    logic [4:0] addr_rs2;
    logic [1:0] aluctrl;
    logic displayctrl;
    logic [5:0]  LEDs;   
    logic [15:0] LFSRout;
    logic [15:0] muxout;
    logic [15:0] A;
    logic [15:0] B;
    logic [15:0] ALUout;

    TopFSM Top1 (
        .clk (clk),
        .rst (rst),
        .ALUbotones(ALUbotones),
        .CambioModo(CambioModo),
        .muxctrl(muxctrl),
        .WEreg(WEreg),
        .WElfsr(WElfsr),
        .addr_rd(addr_rd),
        .addr_rs1(addr_rs1),
        .addr_rs2(addr_rs2),
        .aluctrl(aluctrl),
        .displayctrl(displayctrl),
        .LEDs(LEDs),
    
        .LFSRout(LFSRout),
        .muxout(muxout),
        .A(A),
        .B(B),
        .ALUout(ALUout)
    );

    always begin //Instancia del reloj
            #10;
            clk = ~clk;
        end

    initial begin //se comienza con todas las entradas en 0
        clk = 0;
        rst = 0;
        ALUbotones = 4'b0000;
        CambioModo = 0;

        #50;
        rst = 1; //Se hace el borrado de la memoria
        #50;

        ALUbotones = 4'b1000;
    end


endmodule