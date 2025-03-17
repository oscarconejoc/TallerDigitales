`timescale 1ns/1ps
module TOP (
  input  logic [3:0] input_mux_1,
  input  logic [3:0] input_mux_2,
  input  logic [3:0] input_mux_3,
  input  logic [3:0] input_mux_4,
  input  logic [1:0] btn_Control,
  output logic [6:0] Result,
  input  logic       enable
);

         wire   [3:0] mux_deco;

        MUX mux_top (
        .sw14(input_mux_1),
        .sw58(input_mux_2),
        .sw912(input_mux_3),
        .sw1316(input_mux_4),
        .btn(btn_Control),
        .out_mux(mux_deco)
        );

        DECO deco_top(
        .input_deco(mux_deco),
        .Deco_out(Result)
        );

endmodule

module MUX (
    input  logic [3:0] sw14,
    input  logic [3:0] sw58,
    input  logic [3:0] sw912,
    input  logic [3:0] sw1316,
    input        [1:0] btn,
    output logic [3:0] out_mux

);
    always_comb begin
        case(btn)
            2'b00:   out_mux  = sw14;
            2'b01:   out_mux  = sw58;
            2'b10:   out_mux  = sw912;
            2'b11:   out_mux  = sw1316;
            default: out_mux  = 4'b0000;
        endcase
    end

endmodule


module DECO (
    input  logic [3:0] input_deco,
    output logic [6:0] Deco_out
);

        // Conversión de BCD a 7 segmentos
    always_comb begin   //Agarra los bcd actuales y los convierte al formato del deco de 7 segmentos
        unique case (input_deco)                
            4'b0000: Deco_out = 7'b1111110; // 0      orden: a b c d e f g
            4'b0001: Deco_out = 7'b0110000; // 1
            4'b0010: Deco_out = 7'b1101101; // 2
            4'b0011: Deco_out = 7'b1111001; // 3
            4'b0100: Deco_out = 7'b0110011; // 4
            4'b0101: Deco_out = 7'b1011011; // 5
            4'b0110: Deco_out = 7'b1011111; // 6
            4'b0111: Deco_out = 7'b1110000; // 7
            4'b1000: Deco_out = 7'b1111111; // 8
            4'b1001: Deco_out = 7'b1110011; // 9
            default: Deco_out = 7'b0000000; // Apagado
        endcase
    end
endmodule

