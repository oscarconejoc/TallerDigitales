


`timescale 1ns/1ps


module BancoTB ();
    logic                  clk;         
    logic                  rst;         
    logic        [7:0]     addr_rs1;    
    logic        [7:0]     addr_rs2;
    logic        [7:0]     addr_rd;
    logic        [15:0]    data_in;
    logic                  WE;
    logic        [15:0]    rs1;
    logic        [15:0]    rs2;

    //Instancia del modulo
    Banco_Registros #(.N(256), .W(16)) Banco1 (
        .clk(clk),
        .rst(rst),
        .addr_rs1(addr_rs1),
        .addr_rs2(addr_rs2),
        .addr_rd(addr_rd),
        .data_in(data_in),
        .WE(WE),
        .rs1(rs1),
        .rs2(rs2)
    );

    always begin //Instancia del reloj
            #10;
            clk = ~clk;
        end

    initial begin //se comienza con todas las entradas en 0
        clk = 0;
        rst = 0;
        addr_rs1 = 8'b00000000;
        addr_rs2 = 8'b00000000;
        addr_rd = 8'b00000000;
        data_in = 16'b0000000000000000;
        WE = 0;

        #50;

        rst = 1; //Se hace el borrado de la memoria
        #50;

        rst = 0;
        WE = 1;//Se habilita la lectura
        for (int i = 0; i<15 ; i = i + 1 ) begin //Se hace la escritura en los primeros 16 registros
            addr_rd = i;
            data_in = $urandom; //Dato aleatorio
            #50;
        end
        #50;

        WE = 0; //Se desactiva la escritura
        for (int j = 0; j<15 ; j = j+1 ) begin //Se hacen 16 lecturas
            addr_rs1 = $urandom_range(0, 15); //Se lee en posiciones aleatorias
            #50;
        end
        
        #50;

        WE = 0; //Se repite lo anterior pero para el segundo canal
        for (int k = 0; k<15 ; k = k+1 ) begin
            addr_rs2 = $urandom_range(0, 15);
            #50;
        end
    end





endmodule