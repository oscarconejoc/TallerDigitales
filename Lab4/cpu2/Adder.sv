//Modulo para un sumador completo de Ripple Carry

module Adder (
    input logic        [31:0] A,      //Entrada 1
    input logic        [31:0] B,      //Entrada 2
    input logic               Cin,    //Carry de entrada
    output logic [31:0] Sum,    //Resultado del sumador
    output logic        Cout    //Carry de salida
);
    //Señales internas 
    logic [31:0] C;    //Señal auxiliar para el carry del sumador  
    
    //Llamado al sumador de completo de 1 bit
    Full_Adder_1_bit First_Add (
        .A      (A[0]),
        .B      (B[0]),
        .Cin    (Cin),
        .Sum    (Sum[0]),
        .Cout   (C[0])
    );
    
    //genvar y generate para completar el sumado de ripple carry
    generate
        genvar i;
        for (i = 1; i < 32; i = i + 1) begin
            Full_Adder_1_bit Adder (
                .A      (A[i]),
                .B      (B[i]),
                .Cin    (C[i-1]),
                .Sum    (Sum[i]),
                .Cout   (C[i])
            );
        end
    endgenerate

    //Valor del carry de salida
    assign Cout = C[31];

endmodule

//Modulo del sumador completo de 1 bit

module Full_Adder_1_bit (
    input        A,          //Entrada 1
    input        B,          //Entrada 2
    input        Cin,        //Carry de entrada
    output logic Sum,        //Resultado de la suma
    output logic Cout        //Carry de salida
);
    //Lógica del sumador
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule