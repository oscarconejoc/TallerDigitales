//Oscar Conejo 2020234423
//Modulo Banco de Registros

module Register_bank(
    input  logic           clk,
    input  logic           rst,
    input  logic  [4:0]    A1,
    input  logic  [4:0]    A2,
    input  logic  [4:0]    A3,
    input  logic           WE3,
    input  logic [31:0]    WD3,
    output logic [31:0]    RD1,
    output logic [31:0]    RD2

);
    //32 posiciones de memoria estatica 
    logic [31:0] mem [32];

    // Borrado sincronico del banco de registros
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            for (int i = 0; i < 32; i++) begin
                mem[i] <= 0;
            end
        end
        else if (WE3) begin
            mem[A3] <= WD3;
        end
    end

    
    //Lectura combinacional del banco de registro
    assign RD1 = (A1 == 0) ? 32'h00000000 : mem[A1];
    assign RD2 = (A2 == 0) ? 32'h00000000 : mem[A2];

endmodule
