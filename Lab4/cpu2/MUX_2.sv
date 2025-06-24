//Modulo para un multiplexor de 2 entradas 

module MUX_2 (
    input logic               Selection,      //Señal para elegir la salida
    input logic        [31:0] A,              //Entrada 1
    input logic        [31:0] B,              //Entrada 2
    output logic [31:0] Result          //Salida del multiplexor
);
    //Lógica para seleccionar la salida
    always_comb begin
        case (Selection)
            1'b0: Result = A;
            1'b1: Result = B;
            default: Result = 32'hDEADBEEF;
        endcase
    end
    
endmodule