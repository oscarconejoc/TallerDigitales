module fsm_mealy #(parameter int N_OPS = 10)(
    input logic                  clk,           //reloj
    input logic                  rst_n,         // reset negado
    input logic     [3:0]        ALUbotones,    //Botones de la fpga que determinan la operacion de la ALU
    input logic                  CambioModo,    //Switch de la FPGA que se encarga del cambio entre los dos modos de la unidad
    output logic                 muxctrl,       //Senal de control del mux
    output logic                 WEreg,         //Senal de control del registro
    output logic                 WElfsr,        //Senal de control de la lfsr
    output logic    [5:0]        LEDs,          //LEDs que demuestran la operacion elegida para la ALU, al igual que el dato que se esta presentando
    output logic    [4:0]        addr_rd,       //Direccion de escritura del registro
    output logic    [4:0]        addr_rs1,      //Direccion de lectura 1
    output logic    [4:0]        addr_rs2,      //Direccion de lectura 2
    output logic    [1:0]        aluctrl,       //Senal de control de la ALU
    output logic                 displayctrl    //Senal de control del display
);

    // Definición de estados
    typedef enum logic [3:0] { //Codigo para cada uno de los estados
        estado1    = 4'b0000, //Estado de generacion y almacenamiento de datos 1 y 2
        estado2    = 4'b0001, //Display de dato 1
        estado3    = 4'b0010, //Selecion y execute de operacion de ALU. almacenamiento de resultado
        estado4    = 4'b0011, //Display de resultado
        estado5    = 4'b0100, //Modo 2, lectura de total del registro
        estado6    = 4'b0101, //Estado de espera para selecion de operacion ALU
        estado7    = 4'b0110, //Segundo estado para Modo 2, lectura de total del registro
        estado8    = 4'b0111, //Display de dato 2
        estado9    = 4'b1000, //NO se usa
        estado0    = 4'b1001  //Estado de inicializacion de modulos
    } state_t;

    state_t current_state, next_state;

    logic step;               //Variable para mantenserse en el mismo estado
    logic [4:0] op_counter;   // Contador de operaciones realizadas (0 a 30)
    logic [5:0] count;        //Varuable para contador de modo 2
    logic done;               //Bandera de lectura completa en modo 2
    logic rdy = 0;            //Bandera para seleccion de operacion de ALU
    logic timer1;             //Bandera para contador 1
    logic [24:0] counttimer1; //Variable para contador 1 
    logic timer2;             //Bandera para contador 2
    logic [24:0] counttimer2; //Variable para contador 2

    // Registro de estado (secuencia)
    always_ff @(posedge clk) begin //Cambio de estado siempre que no se tenga un reset
        if (rst_n == 0)
            current_state <= estado0;
        else
            current_state <= next_state;
    end

    always_ff @(posedge clk or negedge rst_n) begin //Se encarga de aumentar op cada vez que se hace el loop de la maquina
        if (rst_n == 0) begin
            op_counter <= '0;    // Reiniciar contador de operaciones

        end else begin

            if (current_state == estado4 && next_state == estado1) begin
                if (op_counter < N_OPS)
                    op_counter <= op_counter + 1'b1;
                else
                    op_counter <= '0; // Contador circular (reinicia al maximo)
            end
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin //Contador de modo 2
        if (rst_n == 0) begin
            count <= 6'd0;
            done  <= 1'b0;
        end else begin
            if (current_state == estado5) begin
                if (count == 6'd30) begin //cuenta para cada posicion de memoria. hasta llegar a la ultima en la posicion 30
                    count <= 6'd0;
                    done <= 1;
                end else begin
                    count <= count + 1;
                    done <= 0;
                end
            end else begin
                done <= 0;
            end
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin //Contador para el display de datos 
        if (rst_n == 0) begin
            counttimer1 <= 25'd0;
            timer1 <= 0;
        end else begin
            if (current_state == estado2 || current_state == estado8 || current_state == estado4 || current_state == estado3) begin
                if (counttimer1 == 25'd20000000) begin //Por la frecuencia del clk 20000000 = 2 segundos 
                    counttimer1 <= 25'd0;
                    timer1 <= 1;
                end else begin
                    counttimer1 <= counttimer1 + 1;
                    timer1 <= 0;
                end
            end else begin
                timer1 <= 0;
            end
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin //Contador para el display de datos en modo 2
        if (rst_n == 0) begin
            counttimer2 <= 25'd0;
            timer2 <= 0;
        end else begin
            if (current_state == estado7) begin
                if (counttimer2 == 25'd20000000) begin //Por la frecuencia del clk 20000000 = 2 segundos 
                    counttimer2 <= 25'd0;
                    timer2 <= 1;
                end else begin
                    counttimer2 <= counttimer2 + 1;
                    timer2 <= 0;
                end
            end else begin
                timer2 <= 0;
            end
        end
    end
    

    // Registro del paso interno
    always_ff @(posedge clk or negedge rst_n) begin //Mantiene al estados 1 y 2 por dos ciclos en el mismo estado
        if (rst_n == 0)
            step <= 0;
        else if (current_state == estado1 || current_state == estado2)
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
                if (timer1 == 1 || CambioModo) begin
                    next_state = estado8;
                end
            end
            estado3: begin
                if (CambioModo) begin
                    next_state = estado5;
                end else if (timer1 == 1) begin
                    next_state = estado4;
                end
            end
            estado4: begin
                if (CambioModo) begin
                    next_state = estado5;
                end else if (timer1 == 1) begin
                    next_state = estado1;
                end
            end
            estado5: begin
                if (done == 1) begin
                    next_state = estado1;
                end else begin
                    next_state = estado7;
                end
            end
            estado6: begin
                if (rdy == 1 || CambioModo) begin
                    next_state = estado3;
                end
            end
            estado7: begin
                if (timer2 == 1) begin
                    next_state = estado5;
                end
            end
            estado8: begin
                if (timer1 == 1 || CambioModo) begin
                    next_state = estado6;
                end
            end
            estado0: begin
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

        if (rst_n == 0) begin
            muxctrl = 0;
            WEreg   = 0;
            WElfsr  = 0;
            LEDs    = 6'b000000;
            addr_rd = 5'b00000;
            addr_rs1 = 5'b00000;
            addr_rs2 = 5'b00000;
            aluctrl  = 2'b00;
            displayctrl = 0;
        end else begin
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
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 0;
                LEDs    = 6'b000001;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = op_counter * 3;
                aluctrl  = 2'b00;
                displayctrl = 1;
            end
            estado3: begin
                displayctrl = 0;
                WEreg = 1;
                addr_rs1 = op_counter * 3;
                addr_rs2 = op_counter * 3 + 1;
                //Se usa priority porque ocupamos que se ejecute primero un If y luego los demas en secuencia
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
            estado5: begin
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 0;
                LEDs    = 6'b000000;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = count;
                aluctrl  = 2'b00;
                displayctrl = 1;
            end
            estado6: begin
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 0;
                LEDs    = 6'b000000;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = 5'b00000;
                aluctrl  = 2'b00;
                displayctrl = 0;
                if (ALUbotones == 4'b0000) begin //Espera a selecion de operacion
                    rdy = 0;
                end else begin
                    rdy = 1;
                end
            end
            estado7: begin
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 0;
                LEDs    = 6'b000000;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = count;
                aluctrl  = 2'b00;
                displayctrl = 1;
            end
            estado8:   begin
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 0;
                LEDs    = 6'b000010;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = op_counter * 3 + 1;
                aluctrl  = 2'b00;
                displayctrl = 1;
            end
            estado0: begin
                muxctrl = 0;
                WEreg   = 0;
                WElfsr  = 1;
                LEDs    = 6'b000000;
                addr_rd = 5'b00000;
                addr_rs1 = 5'b00000;
                addr_rs2 = 5'b00000;
                aluctrl  = 2'b00;
                displayctrl = 0;
            end
                
        endcase
        end
        
    end

endmodule
