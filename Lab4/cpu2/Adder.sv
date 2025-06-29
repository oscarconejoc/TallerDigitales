//Modulo para un sumador completo de Ripple Carry

module Adder (
    input logic        [31:0] A,      //Entrada 1
    input logic        [31:0] B,      //Entrada 2
    output logic       [31:0] Sum    //Resultado del sumador
);
    always_comb begin
        Sum = A + B;
    end

endmodule