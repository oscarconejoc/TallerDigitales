`timescale 1ns / 1ps

module top_interfaz_uart (
    input  logic clk,
    input  logic rst,

    // Control TX
    input  logic enviar_cmd,
    output logic enviar_bit_clear,

    // Control RX
    input  logic leer_cmd,
    output logic leer_bit_clear,

    // Simulación FIFO (se puede sustituir por módulos reales)
    input  logic fifo_tx_empty,
    output logic fifo_tx_rd,

    input  logic fifo_rx_empty,
    output logic fifo_rx_rd,

    // UART
    output logic uart_tx_start,
    output logic uart_tx_rdy,       // Dummy: simulado en testbench
    output logic rx_data_rdy,       // Dummy: simulado en testbench
    input  logic [7:0] data_in,
    output logic [7:0] data_out,
    input  logic rx,
    output logic tx
);

    // Señal interna
    logic uart_tx_rdy_internal;
    assign uart_tx_rdy = uart_tx_rdy_internal; // para monitoreo desde tb

    UART uart_inst (
        .clk(clk),
        .reset(rst),
        .tx_start(uart_tx_start),
        .tx_rdy(uart_tx_rdy_internal),
        .rx_data_rdy(rx_data_rdy),
        .data_in(data_in),
        .data_out(data_out),
        .rx(rx),
        .tx(tx)
    );

    fsm_tx fsm_tx_inst (
        .clk(clk),
        .rst(rst),
        .enviar_cmd(enviar_cmd),
        .enviar_bit_clear(enviar_bit_clear),
        .fifo_tx_empty(fifo_tx_empty),
        .fifo_tx_rd(fifo_tx_rd),
        .uart_tx_rdy(uart_tx_rdy_internal),
        .uart_tx_start(uart_tx_start)
    );

    fsm_rx fsm_rx_inst (
        .clk(clk),
        .rst(rst),
        .leer_cmd(leer_cmd),
        .leer_bit_clear(leer_bit_clear),
        .fifo_rx_empty(fifo_rx_empty),
        .fifo_rx_rd(fifo_rx_rd)
    );

endmodule
