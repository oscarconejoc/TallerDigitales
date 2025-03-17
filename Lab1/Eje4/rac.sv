`timescale 1ns / 1ps
module rca #( 
    parameter Ancho = 8
)(
    // entradas del sumador
    input [Ancho-1:0] A,
    input [Ancho-1:0] B, // 8 bits, 0 a 7, en este caso
    input Cin,
    input clk, //clock utilizado para testeo de ruta crítica
    // salida del sumador
    output [Ancho:0] S, // 9 bits, 0 a 8, para considerar el overflow
    output Cout
);

wire [Ancho:0] local_Cout; // "salida" local para los carrys intermedios

assign local_Cout[0]= Cin; //el carry intermedio del bit 0 es el Cin
assign Cout = local_Cout[Ancho];

// Instancia del módulo de full adders
genvar i;
generate
    for (i = 0; i < Ancho; i = i + 1) begin : bit_
        FullAdder FA_ (
            .a(A[i]), //La entrada a del FA conectada con la entrada A del RCA
            .b(B[i]), //La entrada b del FA conectada con la entrada B del RCA
            .cin(local_Cout[i]), // La entrada cin del FA conectada con los carry intermedios del RCA (donde [0] es Cin -line15-)
            .s(S[i]), // La salida s del FA conectada con la salida S del RCA
            .cout(local_Cout[i+1]) // La salida cout del FA conectada con el último+1 carry intermedio del RCA
        ); 
    end
endgenerate

assign S[Ancho] = local_Cout[Ancho]; //overflow

endmodule
