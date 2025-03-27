


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
    Banco_Registros #(.N(8), .W(16)) Banco1 (
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

    always begin
            #10;
            clk = ~clk;
        end

    initial begin
        clk = 0;
        rst = 0;
        addr_rs1 = 8'b00000000;
        addr_rs2 = 8'b00000000;
        addr_rd = 8'b00000000;
        data_in = 16'b0000000000000000;
        WE = 0;

        #10;

        rst = 1;
        #10;

        rst = 0;
        WE = 1;
        for (int i = 0; i<=255 ; i = i + 1 ) begin
            addr_rs1 = i;
            addr_rs2 = i;
            data_in = $urandom();
            #10;
        end
        #10;

        WE = 0;
        for (int j = 0; j<=255 ; j = j+1 ) begin
            addr_rd = $urandom();
            #10;
        end
    end





endmodule