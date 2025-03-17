`timescale 1ns/1ps

module TBEje5 #(parameter Ancho = 4) ();
    logic   [Ancho-1:0]          A;
    logic   [Ancho-1:0]          B;
    logic   [3:0]          ALUControl;
    logic                  ALUFlagIn;
    logic                  ALUFlags;
    logic   [Ancho-1:0]          ALUResult;
    logic                  Cero;


    ALU #(.Ancho(4)) ALU1(
        .A              (A),
        .B              (B),
        .ALUControl     (ALUControl),
        .ALUFlagIn      (ALUFlagIn),
        .ALUFlags       (ALUFlags),
        .ALUResult      (ALUResult),
        .Z           (Cero)
    );


 initial begin
        A = 4'b0000;
        B = 4'b0000;
        ALUControl = 4'h0;
        ALUFlagIn = 0;

        #50
        A = 4'b0110;
        B = 4'b0010;

        #50
        ALUControl = 4'h1;

        #50
        ALUControl = 4'h2;

        #50
        ALUControl = 4'h3;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h3;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h4;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h4;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h5;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h5;
        ALUFlagIn = 1;

        #50
        ALUControl = 4'h6;
        ALUFlagIn = 0;

        #50
        ALUControl = 4'h7;
        ALUFlagIn = 0;

        // Prueba 1: Desplazamiento a la izquierda
        A = 4'b0110;
        B = 4'b0010;
        ALUControl = 4'h8; // Desplazamiento a la izquierda
        ALUFlagIn = 1;
        #50;
        $display("Prueba 1: Desplazamiento a la izquierda");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);
    
        // Prueba 2: Desplazamiento a la derecha
        A = 4'b1000;
        B = 4'b0010;
        ALUControl = 4'h9; // Desplazamiento a la derecha
        ALUFlagIn = 1;
        #50;
        $display("Prueba 2: Desplazamiento a la derecha");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);
    
        // Prueba 3: Desplazamiento a la izquierda con B = 0
        A = 4'b1010;
        B = 4'b0000;
        ALUControl = 4'h8; // Desplazamiento a la izquierda
        ALUFlagIn = 1;
        #50;
        $display("Prueba 3: Desplazamiento a la izquierda con B = 0");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);
    
        // Prueba 4: Desplazamiento a la derecha con B = 0
        A = 4'b1010;
        B = 4'b0000;
        ALUControl = 4'h9; // Desplazamiento a la derecha
        ALUFlagIn = 1;
        #50;
        $display("Prueba 4: Desplazamiento a la derecha con B = 0");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);
    
        // Prueba 5: Desplazamiento a la izquierda con B > 3 (B % 4 = B)
        A = 4'b0001;
        B = 4'b0010;
        ALUControl = 4'h8; // Desplazamiento a la izquierda
        ALUFlagIn = 1;
        #50;
        $display("Prueba 5: Desplazamiento a la izquierda con B > 3");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);
    
        // Prueba 6: Desplazamiento a la derecha con B > 3 (B % 4 = B)
        A = 4'b1000;
        B = 4'b0010;
        ALUControl = 4'h9; // Desplazamiento a la derecha
        ALUFlagIn = 1;
        #50;
        $display("Prueba 6: Desplazamiento a la derecha con B > 3");
        $display("  A = %b, B = %b, Operación = %h, ResultadoALU = %b, Cero = %b", A, B, ALUControl, ALUResult, Cero);

//        $finish;
end
endmodule