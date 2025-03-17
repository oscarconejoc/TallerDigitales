module cla #(
    parameter Ancho = 8
)( 
    // entradas del sumador
    input [Ancho-1:0] A,
    input [Ancho-1:0] B,
    input Cin,
    input clk, //clock utilizado para el testeo de ruta cr�tica
    
    // salidas del sumador
    output  [Ancho:0] S,
    output Cout,
    output Overflow
);

wire [Ancho-1:0] G, P, C; //creaci�n de variables de generaci�n, propagaci�n y acarreo initial 

assign G[0] = A[0] & B[0];  //generaci�n se da cuando A y B son 1
assign P[0] = A[0] ^ B[0];  // propagaci�n se da cuando A o B son 1
assign C[0] = Cin; // C en el bit 0 es el Cin 

//Generaci�n de est�mulos
genvar i;
generate
    for (i = 1; i < Ancho; i = i + 1) begin : gen_for
        assign G[i] = A[i] & B[i];
        assign P[i] = A[i] ^ B[i];
        assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
    end
endgenerate

// Asignaci�n de valores de salida
assign S = A + B + Cin; //La suma ser� la suma de A, B y Cin 
assign Cout = C[Ancho-1];
assign Overflow = C[Ancho] ^ C[Ancho-1]; // Overflow if MSB of carry is different from the next carry bit

endmodule