`timescale 1ns/1ps
module Deco_tb();

    logic [3:0] input_mux_1;
    logic [3:0] input_mux_2;
    logic [3:0] input_mux_3;
    logic [3:0] input_mux_4;
    logic [1:0] btn_Control;
    wire  [6:0] Result;
    logic       enable;

    // Instancia del módulo TOP
    TOP top_tb (

        .input_mux_1(input_mux_1),
        .input_mux_2(input_mux_2),
        .input_mux_3(input_mux_3),
        .input_mux_4(input_mux_4),
        .btn_Control(btn_Control),
        .Result(Result),
        .enable(enable)
    );

    initial begin
        input_mux_1 = 4'd3;
        input_mux_2 = 4'd2;
        input_mux_3 = 4'd7;
        input_mux_4 = 4'd9;
        enable = 1'b1;

        #40;
        btn_Control = 2'b01; #20;

        $display("_________________________________________________");
        $display("El numero seleccionado corresponde a: %b", Result);
        $display("_________________________________________________");
        $display("El valor de la activación es de: %b", enable);
        $display("_________________________________________________");
        #400;
        $finish();

    end

endmodule