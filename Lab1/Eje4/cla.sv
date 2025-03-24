`timescale 1ns / 1ps
module cla #(
    parameter Ancho = 8
)(
    // Entradas del sumador
    input logic [Ancho-1:0] A,
    input logic [Ancho-1:0] B,
    input logic Cin,
    input logic clk, // Clock utilizado para el testeo de ruta crítica
    
    // Salidas del sumador
    output logic [Ancho:0] S,
    output logic Cout,
    output logic Overflow
);

logic [Ancho-1:0] G, P, C;
//logic [Ancho:0] C; // Cambiado a [Ancho:0] para incluir el acarreo final

// Inicialización para el bit 0
assign G[0] = A[0] & B[0];
assign P[0] = A[0] ^ B[0];
assign C[0] = Cin;

// Generación de G, P y C para bits 1 a Ancho
genvar i;
generate
    for (i = 1; i < Ancho; i = i + 1) begin : gen_for
        assign G[i] = A[i] & B[i];
        assign P[i] = A[i] ^ B[i];
        assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
    end
    // Acarreo final
    assign C[Ancho] = G[Ancho-1] | (P[Ancho-1] & C[Ancho-1]);
endgenerate

// Asignación de valores de salida
assign S = A + B + Cin; // La suma será la suma de A, B y Cin
assign Cout = C[Ancho-1];
assign Overflow = C[Ancho] ^ C[Ancho-1]; // Overflow if MSB of carry is different from the next carry bit

endmodule


