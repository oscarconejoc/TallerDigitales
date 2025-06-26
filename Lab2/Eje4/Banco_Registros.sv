//Lab 2 Ejercicio 4: Banco de Registros
//Oscar Conejo
//Registro parametrizable que se encarga de tomar un dato de entrada y almacenarlo en la direccion establecida. Ademas es capaz de leer y brindar datos en las direcciones solicitadas. 
module Banco_Registros #(parameter N = 8, parameter W = 8)( //senales de entrada y salida del modulo
    input  logic                  clk,  //reloj
    input  logic                  rst,  //reset 
    input  logic        [7:0]   addr_rs1, //direccion del primer dato a leer
    input  logic        [7:0]   addr_rs2, //direccion del segundo dato a leer
    input  logic        [7:0]   addr_rd,  //direccion de escritura
    input  logic        [W-1:0]   data_in, //dato de entrada
    input  logic                  WE,      //Write enable
    output logic        [W-1:0]   rs1,     //dato de lectura 1
    output logic        [W-1:0]   rs2      //Dato de lectura 2

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

    
    //Lectura combinacional del banco de registro
    assign rs1 = (addr_rs1 == 0) ? 0 : mem[addr_rs1]; //Si la direccion es 0. brinda un valor de 0 en la lectura
    assign rs2 = (addr_rs2 == 0) ? 0 : mem[addr_rs2]; //En caso de no ser 0 brinda el dato en la direccion solicitada

endmodule