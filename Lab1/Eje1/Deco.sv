//Ejercicio 1. Switches, botones y LEDs
//Oscar Conejo 


module Deco(
    input       logic s1,
    input       logic s2,
    input       logic s3,
    input       logic s4,
    input       logic boton,
    output      logic l1,
    output      logic l2,
    output      logic l3,
    output      logic l4
);
//assign boton = ~boton;

always_comb begin : deco
    /*assign l1 = s1 && ~boton;
    assign l2 = s2 && ~boton;
    assign l3 = s3 && ~boton;
    assign l4 = s4 && ~boton;*/
    
    l1 = s1 && ~boton;
    l2 = s2 && ~boton;
    l3 = s3 && ~boton;
    l4 = s4 && ~boton;
end

    
endmodule