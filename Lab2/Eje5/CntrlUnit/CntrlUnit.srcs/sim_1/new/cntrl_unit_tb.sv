`timescale 1ns / 1ps

module tb_control_unit;

    // Parámetro
    localparam int N_OPS = 3;

    // Señales
    logic clk, rst_n;
    logic mode_switch;
    logic [3:0] op_buttons;
    logic lfsr_ready, timer_done;
    logic [3:0] leds;
    logic reg_we;
    logic [1:0] alu_op;
    logic [4:0] addr_rs1, addr_rs2, addr_rd;
    logic display_sel, timer_start, timer_reset;

    // Instancia del DUT (Device Under Test)
    control_unit #(.N_OPS(N_OPS)) dut (
        .clk(clk),
        .rst_n(rst_n),
        .mode_switch(mode_switch),
        .op_buttons(op_buttons),
        .lfsr_ready(lfsr_ready),
        .timer_done(timer_done),
        .leds(leds),
        .reg_we(reg_we),
        .alu_op(alu_op),
        .addr_rs1(addr_rs1),
        .addr_rs2(addr_rs2),
        .addr_rd(addr_rd),
        .display_sel(display_sel),
        .timer_start(timer_start),
        .timer_reset(timer_reset)
    );

    // Generador de reloj
    always #5 clk = ~clk;

    // Procedimiento de prueba
    initial begin
        // Inicialización
        clk = 0;
        rst_n = 0;
        mode_switch = 0;
        op_buttons = 4'b0000;
        lfsr_ready = 0;
        timer_done = 0;

        // Reset
        #20;
        rst_n = 1;
        $display("Reset desactivado.");

        // --- MODO CÁLCULO ---
        repeat (N_OPS) begin
            lfsr_ready = 1;
            #10;
            lfsr_ready = 0;

            // Fase A
            #30;

            // Fase B (sin botón todavía)
            #30;

            // Resultado con botón activo (ejemplo: suma)
            op_buttons = 4'b1000;
            #30;
            op_buttons = 4'b0000;

            // Visualización y espera
            timer_done = 1;
            #20;
            timer_done = 0;
        end

        // --- MODO VISUALIZACIÓN ---
        mode_switch = 1;
        #10;

        repeat (N_OPS * 3) begin
            timer_done = 1;
            #20;
            timer_done = 0;
            #30;
        end

        $display("Testbench completado.");
        $finish;
    end

endmodule
