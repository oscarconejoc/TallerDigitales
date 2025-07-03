`timescale 1ns / 1ps

module tb_uart;

    // Señales principales
    logic clk;
    logic rst;

    // Señales de control
    logic enviar_cmd;
    logic enviar_bit_clear;
    logic leer_cmd;
    logic leer_bit_clear;

    // FIFO simulada
    logic fifo_tx_empty;
    logic fifo_tx_rd;
    logic fifo_rx_empty;
    logic fifo_rx_rd;

    // UART
    logic uart_tx_start;
    logic uart_tx_rdy;
    logic rx_data_rdy;
    logic [7:0] data_in;
    logic [7:0] data_out;
    logic rx;
    logic tx;

    // Clock: 50MHz
    always #10 clk = ~clk;

    // Instancia del módulo top
    top_interfaz_uart dut (
        .clk(clk),
        .rst(rst),
        .enviar_cmd(enviar_cmd),
        .enviar_bit_clear(enviar_bit_clear),
        .leer_cmd(leer_cmd),
        .leer_bit_clear(leer_bit_clear),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_rd(fifo_tx_rd),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_rd(fifo_rx_rd),
        .uart_tx_start(uart_tx_start),
        .uart_tx_rdy(uart_tx_rdy),
        .rx_data_rdy(rx_data_rdy),
        .data_in(data_in),
        .data_out(data_out),
        .rx(rx),
        .tx(tx)
    );

    initial begin
        // Para GTKWave
        $dumpfile("tb_uart.vcd");
        $dumpvars(0, tb_uart);

        // Inicialización
        clk = 0;
        rst = 1;
        enviar_cmd = 0;
        leer_cmd = 0;
        fifo_tx_empty = 1;
        fifo_rx_empty = 1;
//        uart_tx_rdy = 1;   // UART lista
        rx = 0;
        data_in = 8'hA5;   // Byte simulado de entrada UART

        #25 rst = 0;

        // -------- PRUEBA FSM_TX --------
        $display("Iniciando prueba TX...");
        #20 fifo_tx_empty = 0;
        enviar_cmd = 1;
        #20 enviar_cmd = 0;
        #100 fifo_tx_empty = 1; // Se "vacía" la FIFO
        #100;

        // -------- PRUEBA FSM_RX --------
        $display("Iniciando prueba RX...");
        fifo_rx_empty = 0;
        #20 leer_cmd = 1;
        #20 leer_cmd = 0;
        #100;

        $display("Fin de la simulación.");
        $finish;
    end

endmodule
