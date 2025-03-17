`timescale 1ns / 1ps

module fa_tb;

   // Definir los cables (signals)
   logic a, b, cin;
   logic s, cout;

   // Instanciar el m�dulo FullAdder
   FullAdder UUT (
      .a(a),
      .b(b),
      .cin(cin),
      .s(s),
      .cout(cout)
   );

   // Generar est�mulos
   initial begin
      $dumpfile("fa_tb.vcd"); // Generar archivo VCD para simulaci�n
      $dumpvars(0, fa_tb); // Volcar variables para simulaci�n
      
      // Inicializar valores
      a = 0; b = 0; cin = 0;

      // Ciclo de prueba
      #10 a = 0; b = 0; cin = 0; // Entradas 000
      #10 a = 0; b = 0; cin = 1; // Entradas 001
      #10 a = 0; b = 1; cin = 0; // Entradas 010
      #10 a = 0; b = 1; cin = 1; // Entradas 011
      #10 a = 1; b = 0; cin = 0; // Entradas 100
      #10 a = 1; b = 0; cin = 1; // Entradas 101
      #10 a = 1; b = 1; cin = 0; // Entradas 110
      #10 a = 1; b = 1; cin = 1; // Entradas 111

      // Finalizar simulaci�n
      #10 $finish;
   end

endmodule
