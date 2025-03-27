//Lab 2 Ejercicio 4: Banco de Registros
//Oscar Conejo

module Banco_Registros #(parameter N = 8, parameter W = 8)(
    input  logic                  clk,
    input  logic                  rst,
    input  logic        [N-1:0]   addr_rs1,
    input  logic        [N-1:0]   addr_rs2,
    input  logic        [N-1:0]   addr_rd,
    input  logic        [W-1:0]   data_in,
    input  logic                  WE,
    output logic        [W-1:0]   rs1,
    output logic        [W-1:0]   rs2

);
    
    logic [N-1:0] mem [N-1];

    // Borrado sincronico del banco de registros
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            for (int i = 0; i < 32; i++) begin
                mem[i] <= 0;
            end
        end
        else if (WE) begin
            mem[addr_rd] <= data_in;
        end
    end

    //Escritura secuencial del banco de registros
    always_ff @(posedge clk) begin
        if (WE) mem[addr_rd] <= data_in;
    end
    
    //Lectura combinacional del banco de registro
    assign rs1 = (addr_rs1 == 0) ? 0 : mem[addr_rs1];
    assign rs2 = (addr_rs2 == 0) ? 0 : mem[addr_rs2];

endmodule