`timescale 1ps/1fs
module DecoHexa_tb ();

    logic        Ena;
    logic        rst;
    logic        clk;
    logic        write;
    logic        select;
    logic [15:0] aleatorio;
   // logic [3:0] Hexa1;
   // logic [3:0] Hexa2;
   // logic [3:0] Hexa3;
   // logic [3:0] Hexa4;
    logic [6:0] Result1;
   // logic [6:0] Result2;
   // logic [6:0] Result3;
   // logic [6:0] Result4;

    

    // Instancia del módulo TOP
    TOP TOP1 (
    .Ena       (Ena),
    .rst       (rst),
    .clk       (clk),
    .write     (write),
    .select    (select),
    .aleatorio (aleatorio),
    //.Hexa1     (Hexa1),
    //.Hexa2     (Hexa2),
    //.Hexa3     (Hexa3),
    //.Hexa4     (Hexa4),
    .Result1   (Result1)
    //.Result2   (Result2),
    //.Result3   (Result3),
    //.Result4   (Result4)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        Ena = 0;
        rst = 1;
        write = 1;
        select = 1;
        #10;
        Ena = 1;
        rst = 0;    
        write = 1;
        select = 1;
        #70

        $finish();

    end

    always @ (posedge clk) begin
            $display("_________________________________________________");
            $display("En el momento: %0t | el valor generado aleatoriamente es: %b", $time, aleatorio);
            $display("En el momento: %0t | Display1: %b |", $time, Result1);
           // $display("En el momento: %0t | Display1: %b | Display2: %b | Display3: %b | Display4: %b", $time, Result1, Result2, Result3, Result4);
           // $display("En el momento: %0t | Parte1: %h | Parte2: %h | Parte3: %h | Parte4: %h", $time, Hexa1, Hexa2, Hexa3, Hexa4);
    end

     
        
endmodule