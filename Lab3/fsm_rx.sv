`timescale 1ns / 1ps

module fsm_rx (

    input logic clk,
    input logic rst,

    // ------- Registro de control -------

    input logic leer_cmd,           // Pulso de 1 ciclo cuando se escribe en el 'leer'
    output logic leer_bit_clear,    // Señal para limpiar el bit 'leer'

    // ------ FIFO RX ------

    input logic fifo_rx_empty,      // '1' si la fifo esta vacia
    output logic fifo_rx_rd        // Habilita la lectura para la fifo
);

    // ------- Definicion de estados -------

    typedef enum logic [1:0] {  

        idle,       // S0: Espera el bit 'leer'
        read_fifo,  // S1: Lee datos de la fifo
        clean_bit   // S2: Limpia el bit 'leer'

    } state_rx;

    state_rx current_state, next_state;

    // -------- Logica secuancial: Registro del estado actual --------

    always_ff @( posedge clk or posedge rst) begin
        if (rst) 
            current_state <= idle;

        else
        current_state <= next_state;
    end

    // -------- Logica combinacional: Transicion y salidad -----------

    always_comb begin
        // ----- Valores por defectp -----

        next_state        = current_state;
        fifo_rx_rd        = 1'b0;
        leer_bit_clear    = 1'b0;

        case (current_state)
            idle: begin                         // S0: Espera bit 'leer'
                if (leer_cmd) begin             // Transicion b: Recibe bit y pasa al siguiente estado
                    next_state = read_fifo;
                end                             // Transicion a: Se queda en el mismo estado si no hay comando
            end

            read_fifo: begin                    // S1: Lectura de datos de la fifo
                if (!fifo_rx_empty) begin       // Solo se habilita la lectura si hay algo que leer
                    fifo_rx_rd = 1'b1;
                end

                next_state = clean_bit;         // Transicion c: Pasa a limpiar el bit         
            end

            clean_bit: begin                    // S2: Limpia el bit 'leer' del registro
                leer_bit_clear = 1'b1;
                next_state = idle;              // Transiciond: Regresa al estado inicial
            end
            
            default: begin
                next_state = idle;
            end
        endcase

    end

endmodule
