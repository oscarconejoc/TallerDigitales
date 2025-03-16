//Ejercicio 2. Multiplexor 4-to-1
//Oscar Conejo 


module Mux #(parameter  WIDTH = 8) (
    in1,
    in2,
    in3,
    in4,
    sel,
    out
);

input  logic     [WIDTH:0]        in1;
input  logic     [WIDTH:0]        in2;
input  logic     [WIDTH:0]        in3;
input  logic     [WIDTH:0]        in4;
input  logic     [1:0]            sel;
output logic     [WIDTH:0]        out;

always_comb begin 
    case (sel)
        2'b00: begin //Seleccion de entrada 1
            out = in1;
        end 

        2'b01: begin //Seleccion de entrada 2
            out = in2;
        end 

        2'b10: begin //Seleccion de entrada 3
            out = in3;
        end 

        2'b11: begin //Seleccion de entrada 4
            out = in4;
        end 

        default: begin //Caso default
            out = 1'b0;
        end 
    endcase
end
    
endmodule

