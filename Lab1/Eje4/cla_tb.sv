`timescale 1ns / 1ps

module cla_tb;

    // Parámetros
    parameter n = 8;

    // Señales de entrada
    logic [n-1:0] A, B;
    logic Cin;

    // Señales de salida
    logic [n:0] S;
    logic Cout;
    logic [n:0] SUM;

    // Instancia del módulo cla
    cla #(.Ancho(n)) dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Inicialización de la simulación
    initial begin
        $dumpfile("cla_tb.vcd");
        $dumpvars(0, cla_tb);
    end

    // Generación de estímulos
    integer i, j, k;
    initial begin
//        logic [n:0] SUM; // Declaración de SUM fuera del bucle
     for (i = 0; i < 2**n; i = i + 1) begin
            for (j = 0; j < 2**n; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    A = i;
                    B = j;
                    Cin = k;
                    SUM = A + B + Cin;     
                    #20;
                    // Comprobar si los resultados coinciden
                    if (S !== SUM) begin
                        $display("Error: A=%d, B=%d, Cin=%d, S=%d, Cout=%d, Expected SUM=%d", A, B, Cin, S, Cout, SUM);
                    end
                end
            end
        end
        $finish;
    end


endmodule
