`timescale 1ns / 1ps

module fsm_tx(
    
    input logic clk,
    input logic rst, // reser en activo en alto
    
    // --- registro de control ---
    input  logic enviar_cmd,       // pulso de 1 ciclo, cuando se escribe en 'enviar'
    output logic enviar_bit_clear, // señal para limpiar el bit 'enviar'
    
    // --- fifo tx ---
    
    input  logic fifo_tx_empty, // '1' si la fifo tx esta vacia
    output logic fifo_tx_rd,    // habilitar lectura para la fifo tx (full)
    
    // --- interfaz uart ---
    input  logic uart_tx_rdy,  // '1' si la uart tx esta lista para un nuevo byte
    output logic uart_tx_start // Inicia la transmision de un byte en la uart
    
    );
    
    // ------- Definicion de estados -------
    
    typedef enum logic [1:0]{
    
        idle,   // S0: Espera el comando 'enviar'
        check_fifo,  // S1: Verifica si hay mas bytes y si la uart esta lista
        read_fifo,   // S2: Genera un pulso para leer la fifo
        send_uart    // S2: Genera un pulso para que la uart empiece a enviar
    
    } state_tx;
    
    state_tx current_state, next_state;
    
    // ---------- Logica secuencia: Registro del estado actual -------
    
    always_ff @(posedge clk or posedge rst) begin
        if(rst)
            current_state <= idle;
        else
            current_state <= next_state;
    end
    
    
    // ----------- Logica combinacional: transicion y salidas -----------
    
    always_comb begin
    
        // ---- Valores por defecto para las salidas -----
        
        next_state          = current_state;
        fifo_tx_rd          = 1'b0;
        uart_tx_start       = 1'b0;
        enviar_bit_clear    = 1'b0;
    
        case (current_state)
            idle: begin                         // S0: Espera el bit de enviar
                if (enviar_cmd) begin
                    next_state = check_fifo;
                end
            end
            
            check_fifo: begin                   // S1: Verificar si hay bits
                enviar_bit_clear = 1'b1;        // Indicacion para que se limpie el bit 'enviar'

                if (fifo_tx_empty) begin        // Transicion c: si no hay mas bits, la tarea termina.
                    next_state = idle;
                end

                else if (uart_tx_rdy) begin     // Transicion d: si hay bits y la uart esta lista, procede a leer y enviar.
                    next_state = read_fifo;     // En caso contrario, espera en este estado hasta que la uart este lista.
                end                             
            end

            read_fifo: begin                    // Extrae bytes de la fifo
                fifo_tx_rd = 1'b1;
                next_state = send_uart;
            end
        
            send_uart: begin                    // S2: Enviar bits (byte)
                uart_tx_start = 1'b1;           // Transicion f: Verifica de nuevo si hay mas butes
                next_state = check_fifo;
            end

            default: begin
                next_state = idle;
            end
        endcase

    end
    
endmodule
