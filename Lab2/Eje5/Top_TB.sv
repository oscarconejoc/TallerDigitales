`timescale 1ns/1ps

module Top_TB ();
    logic                  clk;         
    logic                  rst;
    logic   [3:0]          ALUbotones;
    logic                  CambioModo;
    logic [5:0] LEDs;

    logic [6:0]  seg0;      
//    logic [6:0]  seg1;
//    logic [6:0]  seg2;
//    logic [6:0]  seg3;

    TopFSM Top1 (
        .clk1 (clk),
        .rst (rst),
        .ALUbotones(ALUbotones),
        .CambioModo(CambioModo),
        .LEDs(LEDs),


        .seg0(seg0)
//        .seg1(seg1),
//        .seg2(seg2),
//        .seg3(seg3)
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
        #200;

        ALUbotones = 4'b1000;
        
        #100;

        ALUbotones = 4'b0010;
        #100;

        ALUbotones = 4'b0100;
        #100;

        ALUbotones = 4'b0001;
        #100;

//        CambioModo = 1;
//        #200;
//        CambioModo = 0;
    end


endmodule