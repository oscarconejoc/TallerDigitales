//Ejercicio 1. Switches, botones y LEDs
//Oscar Conejo 

`timescale 1ns/1ps

module TB_Eje1 ();

logic       [15:0]      swt;
logic       [3:0]       boton;
logic       [15:0]      LEDs;

// Instancia del módulo TOP

TopEje1 top(
    .swt(swt),
    .boton(boton),
    .LEDs(LEDs)
);


initial begin
    swt = 16'b0000000000000000;
    boton = 4'b0000;


    #100
    swt = 16'b0000000000000001;
    #100
    $display("_________________________________________________");
    $display("El numero seleccionado corresponde a: %b", LEDs);
    $display("_________________________________________________");

    #100
    swt = 16'b0000000000000010;
    #100
    $display("_________________________________________________");
    $display("El numero seleccionado corresponde a: %b", LEDs);
    $display("_________________________________________________");

    #100
    swt = 16'b0000000000000010;
    boton = 4'b0001;
    #100
    $display("_________________________________________________");
    $display("El numero seleccionado corresponde a: %b", LEDs);
    $display("_________________________________________________");


    #100
    swt = 16'b0000000000010000;
    boton = 4'b0010;
    #100
    $display("_________________________________________________");
    $display("El numero seleccionado corresponde a: %b", LEDs);
    $display("_________________________________________________");


end

    
endmodule