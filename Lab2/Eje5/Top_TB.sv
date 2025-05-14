`timescale 1ns/1ps

module Top_TB ();
    logic                  clk;         
    logic                  rst;
    logic   [3:0]          ALUbotones;
    logic                  CambioModo;

    TopFSM Top1 (
        .clk (clk),
        .rst (rst),
        .ALUbotones(ALUbotones),
        .CambioModo(CambioModo)
    );

    always begin //Instancia del reloj
            #10;
            clk = ~clk;
        end

    initial begin //se comienza con todas las entradas en 0
        clk = 0;
        rst = 1;
        ALUbotones = 4'b0000;
        CambioModo = 0;

        #50;

        rst = 0; //Se hace el borrado de la memoria
        #50;

        ALUbotones = 4'b1000;
    end


endmodule