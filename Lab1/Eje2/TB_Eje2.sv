//Testbench Ejercicio 2. Multiplexor 4-to-1
//Oscar Conejo 

`timescale 1ns/1ps

module TB_Eje2 ();

logic     [15:0]      in1;
logic     [15:0]      in2;
logic     [15:0]      in3;
logic     [15:0]      in4;
logic     [1:0]       sel;
logic     [15:0]      out;


// Instancia del módulo TOP
TopEje2 #(.width(15)) top (
    .in1    (in1),
    .in2    (in2),
    .in3    (in3),
    .in4    (in4),
    .sel    (sel),
    .out    (out)
);

initial begin
    in1 = 16'b0000000000000000;
    in2 = 16'b0000000000000000;
    in3 = 16'b0000000000000000;
    in4 = 16'b0000000000000000;
    sel = 2'b00;
    
    
    #20
    
    for (int j = 0; j<=3; j=j+1) begin
        sel = j;    
        for (int i = 0; i <= 49; i = i+1) begin
            in1 = $urandom();
            in2 = $urandom();
            in3 = $urandom();
            in4 = $urandom();
            
        #20
        $display("salida: %b", out);
        
        end
    end
    

    
end


    
endmodule