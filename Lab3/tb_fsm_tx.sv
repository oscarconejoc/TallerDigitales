`timescale 1ns / 1ps

module tb_fsm_tx;

    // --- Señales ---
    logic clk = 0;
    logic rst;
    logic enviar_cmd;
    logic enviar_bit_clear;
    logic fifo_tx_empty;
    logic fifo_tx_rd; // Corregido: Coincide con el nombre de puerto común
    logic uart_tx_rdy;
    logic uart_tx_start;

    // --- Instancia del DUT ---
    // Asumiendo que el nombre del módulo es fsm_tx y el puerto es fifo_tx_rd_en
    fsm_tx dut (
        .clk(clk),
        .rst(rst), // Asumiendo que el puerto en tu DUT se llama srst
        .enviar_cmd(enviar_cmd),
        .enviar_bit_clear(enviar_bit_clear),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_rd(fifo_tx_rd), // Corregido
        .uart_tx_rdy(uart_tx_rdy),
        .uart_tx_start(uart_tx_start)
    );

    // --- Generador de Reloj ---
    always #5 clk = ~clk;

    // --- Proceso de Simulación ---
    initial begin
        $display("\n--- Iniciando Testbench para fsm_tx ---");
        $display("-------------------------------------------------");

        // 1. Reset
        rst = 1;
        enviar_cmd = 0;
        fifo_tx_empty = 1;
        uart_tx_rdy = 1;
        #20; // Esperar un par de ciclos
        rst = 0;
        $display("[%0t ns] Reset liberado.", $time);
        #10;

        // 2. Preparar condiciones y dar la orden de enviar
        fifo_tx_empty = 0; // FIFO ahora tiene datos
        $display("[%0t ns] CONDICIONES: FIFO con datos (empty=0).", $time);
        #10;

        $display("[%0t ns] COMANDO: Dando la orden 'enviar'...", $time);
        enviar_cmd = 1;
        #10;
        enviar_cmd = 0;

        // 3. Simular la secuencia de envío de un byte
        // La FSM pasará por sus estados en los siguientes ciclos de reloj
        $display("[%0t ns] ACCION: FSM detecta comando y pasa a CHECK_FIFO.", $time);
        #10;

        $display("[%0t ns] ACCION: FSM pasa a READ_FIFO.", $time);
        #10;

        $display("[%0t ns] ACCION: FSM pasa a SEND_UART y vuelve a CHECK_FIFO.", $time);
        #10;

        // 4. Vaciar la FIFO y ver si la FSM vuelve a IDLE
        $display("[%0t ns] CONDICIONES: FIFO ahora vacía (empty=1).", $time);
        fifo_tx_empty = 1;
        #10;
        
        $display("[%0t ns] ACCION: FSM detecta FIFO vacía y vuelve a IDLE.", $time);
        #20;

        $display("-------------------------------------------------");
        $display("--- Testbench Finalizado ---");
        $finish;
    end

    // --- Monitoreo ---
    // $monitor se ejecuta cada vez que una de sus señales cambia de valor
    initial begin
        $monitor("MONITOR @ %0t ns | Estado: %-15s | cmd:%b | empty:%b | rdy:%b || rd_en:%b | start:%b | clear:%b",
                 $time, dut.current_state.name(), enviar_cmd, fifo_tx_empty, uart_tx_rdy,
                 fifo_tx_rd, uart_tx_start, enviar_bit_clear);
    end

endmodule
