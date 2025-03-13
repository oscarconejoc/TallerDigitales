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

input logic     [WIDTH:0]        in1;
input logic     [WIDTH:0]        in2;
input logic     [WIDTH:0]        in3;
input logic     [WIDTH:0]        in4;
input logic     [1:0]            sel;
output logic     [WIDTH:0]        out;

always_comb begin 
    case (sel)
        2'b00: begin
            out = in1;
        end 

        2'b01: begin
            out = in2;
        end 

        2'b10: begin
            out = in3;
        end 

        2'b11: begin
            out = in4;
        end 

        default: begin
            out = 1'b0;
        end 
    endcase
end
    
endmodule