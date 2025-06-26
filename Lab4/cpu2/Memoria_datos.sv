//Modulo de Memoria de Datos

module data_memory (
    input logic                   clk,
    input logic                   rst,
    input logic                  WE,
    input logic                  RE,
    input logic           [31:0]  A,
    input logic           [31:0]  WD,
    output logic    [31:0]  RD
);
    // Memoria (RAM) dinamica 
    logic [31:0] mem [128];

    // Borrado de la memoria en caso de reset
    always_ff @(negedge clk or posedge rst) begin
        if (rst) begin
            // Borrado de memoria
            for (int i = 0; i < 8; i++) begin
                mem[i] <= 0;
            end
            for (int i = 9; i < 'hc; i++) begin
                mem[i] <= 0;
            end
            for (int i = 'hd; i < 128; i++) begin
                mem[i] <= 0;
            end
                  
            mem[32'h00000000] <= 32'hAABBCCDD;
            mem[8] <= 32'h21212121;
            mem['hc] <= 32'h23232323;
        end
        else if (WE) begin
            mem[A-'h3e0] <= WD;  // Escritura en memoria, usando solo las posiciones necesarias de la dirección
        end
    end

    //Lectura combinacional
    always_comb begin
        if (RE) begin
            RD = mem[A-'h3e0];   // Lectura de la memoria
        end else begin
            RD = 32'hDEADBEEF;   // Valor predeterminado si no se lee
        end
    end

endmodule