`timescale 1ns / 1ps

module cla_tb;

   // Par�metros
    parameter n = 8;
    
    // Se�ales de entrada
    logic [n-1:0] A, B;
    logic Cin;

    // Se�ales de salida
    logic [n:0] S;
    logic Cout;
    logic [n:0] SUM;

    
    // Instancia del m�dulo cla
    cla #(.Ancho(n)) dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
    // Inicializaci�n de la simulaci�n
    initial begin
        $dumpfile("cla_tb.vcd");
        $dumpvars(0, cla_tb);
    end
    
     integer i, j, k;
     initial begin 
        // Generaci�n de est�mulos
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