`timescale 1ns / 1ps

module control_unit #(
    // Parámetro para definir el número máximo de operaciones (para hacer el diseño parametrizable)
    parameter int N_OPS = 10
)(
    // Entradas
    input  logic        clk,           // Reloj
    input  logic        rst_n,         // Reset activo bajo (se usa *_n para indicar negación)
    input  logic        mode_switch,   // Modo: 0 = cálculo, 1 = visualización
    input  logic [3:0]  op_buttons,    // Botones de operación {or, and, resta, suma}
    input  logic        lfsr_ready,    // Señal que indica que el generador LFSR está listo
    input  logic        timer_done,    // Señal que indica que el temporizador terminó

    // Salidas
    output logic [3:0]  leds,          // LEDs para indicar estado o operación activa
    output logic        reg_we,        // Señal de escritura en registro
    output logic [1:0]  alu_op,        // Código de operación para la ALU
    output logic [4:0]  addr_rs1,      // Dirección registro fuente 1
    output logic [4:0]  addr_rs2,      // Dirección registro fuente 2
    output logic [4:0]  addr_rd,       // Dirección registro destino
    output logic        display_sel,   // Selección para display
    output logic        timer_start,   // Señal para iniciar temporizador
    output logic        timer_reset    // Señal para resetear temporizador
);

    // -------------------------------
    // Definición de estados de la FSM
    // -------------------------------
    typedef enum logic [2:0] {
        STATE_1,  // Generación de datos
        STATE_2,  // Procesamiento / almacenamiento
        STATE_3,  // Operación
        STATE_4,  // Visualización en display
        STATE_5   // Verificación / espera
    } state_t;

    state_t current_state, next_state; // Registros para estado actual y siguiente

    // -------------------------------
    // Registros auxiliares para control interno
    // -------------------------------
    logic [4:0] op_counter;   // Contador de operaciones realizadas (0 a N_OPS)
    logic       data_phase;   // Fase de datos: 0 = A, 1 = B (dos fases para entrada de datos)
    logic [4:0] reg_addr;     // Puntero para dirección en modo visualización
    logic [4:0] baseA;        // Señal combinacional para base de direcciones (usada en display)

    // -------------------------------
    // Registro de estado: actualización en flanco de reloj o reset
    // -------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= STATE_1;  // Al reset, ir al estado inicial (generación de datos)
        else
            current_state <= next_state; // Avanzar al siguiente estado
    end

    // -------------------------------
    // Lógica para contador y punteros
    // -------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            op_counter <= '0;    // Reiniciar contador de operaciones
            data_phase <= 1'b0;  // Iniciar en fase A
            reg_addr   <= '0;    // Reiniciar puntero de visualización
        end else begin
            // Incrementar contador cuando se completa una operación (transición STATE_3 -> STATE_4 y en fase B)
            if (current_state == STATE_3 && next_state == STATE_4 && data_phase) begin
                if (op_counter < N_OPS)
                    op_counter <= op_counter + 1'b1;
                else
                    op_counter <= '0; // Contador circular (reinicia al máximo)
            end

            // Cambiar fase de datos (toggle A/B) al pasar de STATE_2 a STATE_3
            if (current_state == STATE_2 && next_state == STATE_3)
                data_phase <= ~data_phase;

            // En modo visualización, avanzar dirección de registro en STATE_5->STATE_1
            if (mode_switch && current_state == STATE_5 && next_state == STATE_1)
                reg_addr <= (reg_addr < op_counter * 3) ? reg_addr + 1'b1 : '0;
        end
    end

    // -------------------------------
    // Lógica combinacional para determinar el próximo estado
    // -------------------------------
    always_comb begin
        next_state = current_state; // Por defecto, mantener estado actual

        unique case (current_state)
            STATE_1: 
                if (lfsr_ready || mode_switch) 
                    next_state = STATE_2;  // Avanzar si LFSR listo o modo visualización

            STATE_2: 
                next_state = STATE_3;      // Siempre avanzar a operación

            STATE_3: 
                if (mode_switch || !data_phase || (|op_buttons && data_phase))
                    next_state = STATE_4;  // Avanzar a visualización según condiciones

            STATE_4: 
                next_state = STATE_5;      // Siempre avanzar a verificación

            STATE_5: 
                next_state = timer_done ? STATE_1 : STATE_4; // Volver a inicio si timer terminó

            default: 
                next_state = STATE_1;      // Por defecto, ir a estado inicial
        endcase
    end

    // -------------------------------
    // Lógica combinacional para señales de salida según estado actual
    // -------------------------------
    always_comb begin
        // Valores por defecto para evitar latches
        leds         = 4'b0;
        reg_we       = 1'b0;
        alu_op       = 2'b00;
        addr_rs1     = 5'd0;
        addr_rs2     = 5'd0;
        addr_rd      = 5'd0;
        display_sel  = 1'b0;
        timer_start  = 1'b0;
        timer_reset  = 1'b0;

        unique case (current_state)
            // -------- STATE_1: Generación de datos --------
            STATE_1: 
                timer_reset = 1'b1; // Resetear temporizador

            // -------- STATE_2: Procesamiento / almacenamiento --------
            STATE_2: begin
                if (!mode_switch) begin // Solo en modo cálculo
                    reg_we = 1'b1;      // Habilitar escritura en registro

                    unique case ({data_phase, |op_buttons})
                        2'b00: begin // Fase A sin operación activa
                            addr_rd = op_counter * 3; // Dirección para dato A
                            leds    = 4'b0001;        // Indicar fase A con LED
                        end
                        2'b10: begin // Fase B sin operación activa
                            addr_rd = op_counter * 3 + 1; // Dirección para dato B
                            leds    = 4'b0010;             // Indicar fase B con LED
                        end
                        2'b11: begin // Fase B con operación activa (resultado)
                            addr_rd = op_counter * 3 + 2; // Dirección para resultado
                            leds    = 4'b1000;             // Indicar resultado con LED

                            // Codificación de operación ALU según botón presionado (prioridad)
                            priority if (op_buttons[0])      alu_op = 2'b00; // OR
                            else if (op_buttons[1])          alu_op = 2'b01; // AND
                            else if (op_buttons[2])          alu_op = 2'b10; // RESTA
                            else if (op_buttons[3])          alu_op = 2'b11; // SUMA
                        end
                        default: ; // No hacer nada
                    endcase
                end
            end

            // -------- STATE_3: Operación --------
            STATE_3: begin
                if (!data_phase) begin
                    leds = 4'b0001; // Preparando dato A
                end else if (|op_buttons) begin
                    addr_rs1 = op_counter * 3;     // Dirección dato A
                    addr_rs2 = op_counter * 3 + 1; // Dirección dato B
                    leds     = op_buttons;          // Indicar operación activa con LEDs
                end else begin
                    leds = 4'b0010; // Preparando dato B
                end
            end

            // -------- STATE_4 y STATE_5: Visualización y espera --------
            STATE_4, STATE_5: begin
                timer_start = 1'b1; // Iniciar temporizador

                if (mode_switch) begin
                    addr_rs1 = reg_addr; // Dirección para modo visualización

                    // Selección de LED y display según módulo de reg_addr
                    case (reg_addr % 3)
                        0: begin leds = 4'b0001; display_sel = 1'b0; end // Dato A
                        1: begin leds = 4'b0010; display_sel = 1'b0; end // Dato B
                        default: begin leds = 4'b1000; display_sel = 1'b1; end // Resultado
                    endcase
                end else begin
                    baseA = op_counter * 3; // Base para direcciones en modo cálculo

                    if (!data_phase) begin
                        addr_rs1 = baseA;      // Dirección dato A
                        leds     = 4'b0001;    // LED fase A
                        display_sel = 1'b0;
                    end else if (|op_buttons) begin
                        addr_rs1 = baseA + 2;  // Dirección resultado
                        leds     = 4'b1000;    // LED resultado
                        display_sel = 1'b1;
                    end else begin
                        addr_rs1 = baseA + 1;  // Dirección dato B
                        leds     = 4'b0010;    // LED fase B
                        display_sel = 1'b0;
                    end
                end

                // Resetear temporizador si estamos en STATE_5 y timer terminó
                if (current_state == STATE_5 && timer_done)
                    timer_reset = 1'b1;
            end
        endcase
    end

endmodule
