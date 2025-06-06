//Lab 2 Ejercicio 4: Banco de Registros
//Oscar Conejo

module Banco_Registros #(parameter N = 8, parameter W = 8)( //senales de entrada y salida del modulo
    input  logic                  clk,
    input  logic                  rst,
    input  logic        [7:0]   addr_rs1,
    input  logic        [7:0]   addr_rs2,
    input  logic        [7:0]   addr_rd,
    input  logic        [W-1:0]   data_in,
    input  logic                  WE,
    output logic        [W-1:0]   rs1,
    output logic        [W-1:0]   rs2

);
    
    logic [W-1:0] mem [N]; //arreglo de memoria parametrizable

    // Borrado sincronico del banco de registros
    always_ff @(posedge clk or posedge rst) begin
        if (rst == 1) begin //se enciende cuando el rst esta en 1
            for (int i = 0; i < N-1; i++) begin //borra todos los estados de memoria llenandolos de 0
                mem[i] <= 0;
            end
        end
        else if (WE == 1) begin // si se habilita la escritura
            mem[addr_rd] <= data_in; //Escribe el dato de entrada en la direccion asignada
        end
    end

    //Escritura secuencial del banco de registros
//    always_ff @(posedge clk) begin
//        if (WE == 1) mem[addr_rd] <= data_in;
//    end
    
    //Lectura combinacional del banco de registro
    assign rs1 = (addr_rs1 == 0) ? 0 : mem[addr_rs1]; //Si la direccion es 0. brinda un valor de 0 en la lectura
    assign rs2 = (addr_rs2 == 0) ? 0 : mem[addr_rs2]; //En caso de no ser 0 brinda el dato en la direccion solicitada

endmodule