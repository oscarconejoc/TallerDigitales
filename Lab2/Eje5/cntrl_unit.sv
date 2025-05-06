`timescale 1ns / 1ps

module control_unit #(
    // Par�metro para definir el n�mero m�ximo de operaciones (para hacer el dise�o parametrizable)
    parameter int N_OPS = 10
)(
    // Entradas
    input  logic        clk,           // Reloj
    input  logic        rst_n,         // Reset activo bajo (se usa *_n para indicar negaci�n)
    input  logic        mode_switch,   // Modo: 0 = c�lculo, 1 = visualizaci�n
    input  logic [3:0]  op_buttons,    // Botones de operaci�n {or, and, resta, suma}
    input  logic        lfsr_ready,    // Se�al que indica que el generador LFSR est� listo
    input  logic        timer_done,    // Se�al que indica que el temporizador termin�

    // Salidas
    output logic [3:0]  leds,          // LEDs para indicar estado o operaci�n activa
    output logic        reg_we,        // Se�al de escritura en registro
    output logic [1:0]  alu_op,        // C�digo de operaci�n para la ALU
    output logic [4:0]  addr_rs1,      // Direcci�n registro fuente 1
    output logic [4:0]  addr_rs2,      // Direcci�n registro fuente 2
    output logic [4:0]  addr_rd,       // Direcci�n registro destino
    output logic        display_sel,   // Selecci�n para display
    output logic        timer_start,   // Se�al para iniciar temporizador
    output logic        timer_reset    // Se�al para resetear temporizador
);

    // -------------------------------
    // Definici�n de estados de la FSM
    // -------------------------------
    typedef enum logic [2:0] {
        STATE_1,  // Generaci�n de datos
        STATE_2,  // Procesamiento / almacenamiento
        STATE_3,  // Operaci�n
        STATE_4,  // Visualizaci�n en display
        STATE_5   // Verificaci�n / espera
    } state_t;

    state_t current_state, next_state; // Registros para estado actual y siguiente

    // -------------------------------
    // Registros auxiliares para control interno
    // -------------------------------
    logic [4:0] op_counter;   // Contador de operaciones realizadas (0 a N_OPS)
    logic       data_phase;   // Fase de datos: 0 = A, 1 = B (dos fases para entrada de datos)
    logic [4:0] reg_addr;     // Puntero para direcci�n en modo visualizaci�n
    logic [4:0] baseA;        // Se�al combinacional para base de direcciones (usada en display)

    // -------------------------------
    // Registro de estado: actualizaci�n en flanco de reloj o reset
    // -------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= STATE_1;  // Al reset, ir al estado inicial (generaci�n de datos)
        else
            current_state <= next_state; // Avanzar al siguiente estado
    end

    // -------------------------------
    // L�gica para contador y punteros
    // -------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            op_counter <= '0;    // Reiniciar contador de operaciones
            data_phase <= 1'b0;  // Iniciar en fase A
            reg_addr   <= '0;    // Reiniciar puntero de visualizaci�n
        end else begin
            // Incrementar contador cuando se completa una operaci�n (transici�n STATE_3 -> STATE_4 y en fase B)
            if (current_state == STATE_3 && next_state == STATE_4 && data_phase) begin
                if (op_counter < N_OPS)
                    op_counter <= op_counter + 1'b1;
                else
                    op_counter <= '0; // Contador circular (reinicia al m�ximo)
            end

            // Cambiar fase de datos (toggle A/B) al pasar de STATE_2 a STATE_3
            if (current_state == STATE_2 && next_state == STATE_3)
                data_phase <= ~data_phase;

            // En modo visualizaci�n, avanzar direcci�n de registro en STATE_5->STATE_1
            if (mode_switch && current_state == STATE_5 && next_state == STATE_1)
                reg_addr <= (reg_addr < op_counter * 3) ? reg_addr + 1'b1 : '0;
        end
    end

    // -------------------------------
    // L�gica combinacional para determinar el pr�ximo estado
    // -------------------------------
    always_comb begin
        next_state = current_state; // Por defecto, mantener estado actual

        unique case (current_state)
            STATE_1: 
                if (lfsr_ready || mode_switch) 
                    next_state = STATE_2;  // Avanzar si LFSR listo o modo visualizaci�n

            STATE_2: 
                next_state = STATE_3;      // Siempre avanzar a operaci�n

            STATE_3: 
                if (mode_switch || !data_phase || (|op_buttons && data_phase))
                    next_state = STATE_4;  // Avanzar a visualizaci�n seg�n condiciones

            STATE_4: 
                next_state = STATE_5;      // Siempre avanzar a verificaci�n

            STATE_5: 
                next_state = timer_done ? STATE_1 : STATE_4; // Volver a inicio si timer termin�

            default: 
                next_state = STATE_1;      // Por defecto, ir a estado inicial
        endcase
    end

    // -------------------------------
    // L�gica combinacional para se�ales de salida seg�n estado actual
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
            // -------- STATE_1: Generaci�n de datos --------
            STATE_1: 
                timer_reset = 1'b1; // Resetear temporizador

            // -------- STATE_2: Procesamiento / almacenamiento --------
            STATE_2: begin
                if (!mode_switch) begin // Solo en modo c�lculo
                    reg_we = 1'b1;      // Habilitar escritura en registro

                    unique case ({data_phase, |op_buttons})
                        2'b00: begin // Fase A sin operaci�n activa
                            addr_rd = op_counter * 3; // Direcci�n para dato A
                            leds    = 4'b0001;        // Indicar fase A con LED
                        end
                        2'b10: begin // Fase B sin operaci�n activa
                            addr_rd = op_counter * 3 + 1; // Direcci�n para dato B
                            leds    = 4'b0010;             // Indicar fase B con LED
                        end
                        2'b11: begin // Fase B con operaci�n activa (resultado)
                            addr_rd = op_counter * 3 + 2; // Direcci�n para resultado
                            leds    = 4'b1000;             // Indicar resultado con LED

                            // Codificaci�n de operaci�n ALU seg�n bot�n presionado (prioridad)
                            priority if (op_buttons[0])      alu_op = 2'b00; // OR
                            else if (op_buttons[1])          alu_op = 2'b01; // AND
                            else if (op_buttons[2])          alu_op = 2'b10; // RESTA
                            else if (op_buttons[3])          alu_op = 2'b11; // SUMA
                        end
                        default: ; // No hacer nada
                    endcase
                end
            end

            // -------- STATE_3: Operaci�n --------
            STATE_3: begin
                if (!data_phase) begin
                    leds = 4'b0001; // Preparando dato A
                end else if (|op_buttons) begin
                    addr_rs1 = op_counter * 3;     // Direcci�n dato A
                    addr_rs2 = op_counter * 3 + 1; // Direcci�n dato B
                    leds     = op_buttons;          // Indicar operaci�n activa con LEDs
                end else begin
                    leds = 4'b0010; // Preparando dato B
                end
            end

            // -------- STATE_4 y STATE_5: Visualizaci�n y espera --------
            STATE_4, STATE_5: begin
                timer_start = 1'b1; // Iniciar temporizador

                if (mode_switch) begin
                    addr_rs1 = reg_addr; // Direcci�n para modo visualizaci�n

                    // Selecci�n de LED y display seg�n m�dulo de reg_addr
                    case (reg_addr % 3)
                        0: begin leds = 4'b0001; display_sel = 1'b0; end // Dato A
                        1: begin leds = 4'b0010; display_sel = 1'b0; end // Dato B
                        default: begin leds = 4'b1000; display_sel = 1'b1; end // Resultado
                    endcase
                end else begin
                    baseA = op_counter * 3; // Base para direcciones en modo c�lculo

                    if (!data_phase) begin
                        addr_rs1 = baseA;      // Direcci�n dato A
                        leds     = 4'b0001;    // LED fase A
                        display_sel = 1'b0;
                    end else if (|op_buttons) begin
                        addr_rs1 = baseA + 2;  // Direcci�n resultado
                        leds     = 4'b1000;    // LED resultado
                        display_sel = 1'b1;
                    end else begin
                        addr_rs1 = baseA + 1;  // Direcci�n dato B
                        leds     = 4'b0010;    // LED fase B
                        display_sel = 1'b0;
                    end
                end

                // Resetear temporizador si estamos en STATE_5 y timer termin�
                if (current_state == STATE_5 && timer_done)
                    timer_reset = 1'b1;
            end
        endcase
    end

endmodule
