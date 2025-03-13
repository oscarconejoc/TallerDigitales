//Ejercicio 2. Multiplexor 4-to-1
//Oscar Conejo 

//`include "Mux.sv"

module TopEje2 #(parameter width = 8)(
    input   logic     [width:0]      in1,
    input   logic     [width:0]      in2,
    input   logic     [width:0]      in3,
    input   logic     [width:0]      in4,
    input   logic     [1:0]          sel,
    output  logic     [width:0]      out

);


Mux #(.WIDTH(width)) mux1(
    .in1    (in1),
    .in2    (in2),
    .in3    (in3),
    .in4    (in4),
    .sel    (sel),
    .out    (out)
);
    
endmodule