`timescale 1ns / 1ps

module tb_fsm_rx;

    // --- Señales para conectar al DUT ---
    logic clk = 0;
    logic rst;
    logic leer_cmd;
    logic leer_bit_clear;
    logic fifo_rx_empty;
    logic fifo_rx_rd;

    // --- Instancia del DUT (Device Under Test) ---
    fsm_rx dut (.*); // Conexión por nombre, funciona porque los nombres coinciden

    // --- Generador de Reloj ---
    always #5 clk = ~clk;

    // --- Proceso de Simulación ---
    initial begin
        $display("\n--- Iniciando Testbench para fsm_rx ---");
        $display("-------------------------------------------");

        // 1. Reset
        rst = 1;
        leer_cmd = 0;
        fifo_rx_empty = 1; // Empezamos con la FIFO vacía
        #20;
        rst = 0;
        $display("[%0t ns] Reset liberado.", $time);
        #10;

        // 2. Escenario: Comando 'leer' con datos en la FIFO
        $display("[%0t ns] CONDICIONES: FIFO con datos (empty=0).", $time);
        fifo_rx_empty = 0;
        #10;
        
        $display("[%0t ns] COMANDO: Dando la orden 'leer'...", $time);
        leer_cmd = 1;
        #10;
        leer_cmd = 0;

        // 3. Dejar que la FSM complete su ciclo de 3 estados
        $display("[%0t ns] ACCION: FSM detecta comando y pasa a 'read_fifo'.", $time);
        #10;
        
        $display("[%0t ns] ACCION: FSM pasa a 'clean_bit'.", $time);
        #10;

        $display("[%0t ns] ACCION: FSM pasa de vuelta a 'idle'.", $time);
        #10;
        
        $display("\n[%0t ns] Escenario completado.", $time);
        
        // 4. Escenario: Comando 'leer' con FIFO vacía para verificar seguridad
        $display("\n[%0t ns] CONDICIONES: FIFO ahora vacía (empty=1).", $time);
        fifo_rx_empty = 1;
        #10;
        
        $display("[%0t ns] COMANDO: Dando la orden 'leer' de nuevo...", $time);
        leer_cmd = 1;
        #10;
        leer_cmd = 0;
        #30; // Dejar que complete el ciclo
        $display("[%0t ns] Escenario con FIFO vacía completado. 'fifo_rx_rd' no debió activarse.", $time);

        $display("-------------------------------------------");
        $display("--- Testbench Finalizado ---");
        $finish;
    end

    // --- Monitoreo de Señales ---
    initial begin
        $monitor("MONITOR @ %0t ns | Estado: %-10s | cmd:%b | empty:%b || rd:%b | clear:%b",
                 $time, dut.current_state.name(), leer_cmd, fifo_rx_empty,
                 fifo_rx_rd, leer_bit_clear);
    end

endmodule