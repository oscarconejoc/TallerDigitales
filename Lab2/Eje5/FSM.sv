module fsm_mealy #(parameter int N_OPS = 10)(
    input logic         clk,
    input logic         rst_n,         // reset activo en bajo
    input logic     [3:0]        ALUbotones,  
    input logic                  CambioModo,   
    output logic                 muxctrl,
    output logic                 WEreg,
    output logic                 WElfsr,
    output logic    [5:0]        LEDs,
    output logic    [4:0]        addr_rd,
    output logic    [4:0]        addr_rs1,
    output logic    [4:0]        addr_rs2,
    output logic    [1:0]        aluctrl,
    output logic                 displayctrl    
);

    // Definición de estados
    typedef enum logic [2:0] {
        estado1    = 3'b000,
        estado2    = 3'b001,
        estado3    = 3'b010,
        estado4    = 3'b011,
        estado5    = 3'b100    
    } state_t;

    state_t current_state, next_state;

    logic step;
    logic [4:0] op_counter;   // Contador de operaciones realizadas (0 a 30)

    // Registro de estado (secuencia)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= estado1;
        else
            current_state <= next_state;
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            op_counter <= '0;    // Reiniciar contador de operaciones

        end else begin

            if (current_state == estado4 && next_state == estado1) begin
                if (op_counter < N_OPS)
                    op_counter <= op_counter + 1'b1;
                else
                    op_counter <= '0; // Contador circular (reinicia al m�ximo)
            end
        end
    end
    

    // Registro del paso interno
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            step <= 0;
        else if (current_state == estado1)
            step <= ~step;  // alterna entre 0 y 1 cada ciclo en S1
        else
            step <= 0;
    end

    // Lógica de transición de estados
    always_comb begin
        // valor por defecto
        next_state = current_state;
        case (current_state)
            estado1: begin
                if (step == 1 || CambioModo)
                    next_state = estado2;  // luego de dos ciclos, avanza
            end
            estado2: begin
                if (step == 1 || CambioModo)
                    next_state = estado3;  // luego de dos ciclos, avanza
            end
            estado3: begin
                if (CambioModo) begin
                    next_state = estado5;
                end else begin
                    next_state = estado4;
                end
            end
            estado4: begin
                if (CambioModo) begin
                    next_state = estado5;
                end else begin
                    next_state = estado1;
                end
            end
            estado5: begin
                next_state = estado1;
            end
            
        endcase
    end

    // Lógica de salida
    always_comb begin
        // valor por defecto
        muxctrl = 0;
        WEreg   = 0;
        WElfsr  = 0;
        LEDs    = 6'b000000;
        addr_rd = 5'b00000;
        addr_rs1 = 5'b00000;
        addr_rs2 = 5'b00000;
        aluctrl  = 2'b00;
        displayctrl = 0;
        case (current_state)
            estado1: begin
                if (step == 0) begin
                    WElfsr = 1;
                    muxctrl = 0;
                    WEreg = 1;
                    addr_rd = op_counter * 3;
                end else begin
                    WElfsr = 1;
                    muxctrl = 0;
                    WEreg = 1;
                    addr_rd = op_counter * 3 + 1;
                end
            end
            estado2:   begin
                if (step == 0) begin
                    WElfsr = 0;
                    muxctrl = 0;
                    WEreg = 0;
                    addr_rs2 = op_counter * 3;
                    LEDs = 6'b000001;
                    displayctrl = 1;
                end else begin
                    WElfsr = 0;
                    muxctrl = 0;
                    WEreg = 0;
                    addr_rs2 = op_counter * 3 + 1;
                    LEDs = 6'b000010;
                    displayctrl = 1;
                end
            end
            estado3: begin
                displayctrl = 0;
                addr_rs1 = op_counter * 3;
                addr_rs2 = op_counter * 3 + 1;
                priority if (ALUbotones[0])      aluctrl = 2'b00; // OR
                else if (ALUbotones[1])          aluctrl = 2'b01; // AND
                else if (ALUbotones[2])          aluctrl = 2'b10; // RESTA
                else if (ALUbotones[3])          aluctrl = 2'b11; // SUMA
                if (aluctrl == 2'b00) begin
                    LEDs = 6'b100000;
                end
                else if (aluctrl == 2'b01) begin
                    LEDs = 6'b010000;
                end
                else if (aluctrl == 2'b10) begin
                    LEDs = 6'b001000;
                end
                else if (aluctrl == 2'b11) begin
                    LEDs = 6'b000100;
                end
                muxctrl = 1;
                addr_rd = op_counter * 3 + 2;
                end
            estado4: begin
                displayctrl = 1;
                addr_rs2 = op_counter * 3 + 2;
                WElfsr = 0;
                muxctrl = 0;
                WEreg = 0;
            end
                
        endcase
    end

endmodule
