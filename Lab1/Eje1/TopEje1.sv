//Ejercicio 1. Switches, botones y LEDs
//Oscar Conejo 

//`include "Deco.sv"

module TopEje1 (
    input   logic       [15:0]      swt,
    input   logic       [3:0]       boton,
    output  logic       [15:0]      LEDs
);


Deco deco1 (
    .s1         (swt[0]),
    .s2         (swt[1]),
    .s3         (swt[2]),
    .s4         (swt[3]),
    .boton      (boton[0]),
    .l1         (LEDs[0]),
    .l2         (LEDs[1]),
    .l3         (LEDs[2]),
    .l4         (LEDs[3])

);


Deco deco2 (
    .s1         (swt[4]),
    .s2         (swt[5]),
    .s3         (swt[6]),
    .s4         (swt[7]),
    .boton      (boton[1]),
    .l1         (LEDs[4]),
    .l2         (LEDs[5]),
    .l3         (LEDs[6]),
    .l4         (LEDs[7])

);


Deco deco3 (
    .s1         (swt[8]),
    .s2         (swt[9]),
    .s3         (swt[10]),
    .s4         (swt[11]),
    .boton      (boton[2]),
    .l1         (LEDs[8]),
    .l2         (LEDs[9]),
    .l3         (LEDs[10]),
    .l4         (LEDs[11])

);


Deco deco4 (
    .s1         (swt[12]),
    .s2         (swt[13]),
    .s3         (swt[14]),
    .s4         (swt[15]),
    .boton      (boton[3]),
    .l1         (LEDs[12]),
    .l2         (LEDs[13]),
    .l3         (LEDs[14]),
    .l4         (LEDs[15])

);
    
endmodule