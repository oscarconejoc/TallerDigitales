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

always_comb begin : deco
    l1 = s1 && ~boton;
    l2 = s2 && ~boton;
    l3 = s3 && ~boton;
    l4 = s4 && ~boton;
end

    
endmodule



