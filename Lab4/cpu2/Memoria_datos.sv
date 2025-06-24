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
    logic [31:0] mem [ logic [31:0] ];

    // Borrado de la memoria en caso de reset
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            // Borrado de memoria
            mem.delete();      
            mem[32'h00000000] = 32'hAABBCCDD;
            mem[32'h000003e8] = 32'h21212121;
            mem[32'h000003ec] = 32'h23232323;
        end
        else if (WE) begin
            mem[A] = WD;  // Escritura en memoria, usando solo las posiciones necesarias de la dirección
        end
    end

    //Lectura combinacional
    always_comb begin
        if (RE) begin
            RD = mem[A];   // Lectura de la memoria
        end else begin
            RD = 32'hDEADBEEF;   // Valor predeterminado si no se lee
        end
    end

endmodule