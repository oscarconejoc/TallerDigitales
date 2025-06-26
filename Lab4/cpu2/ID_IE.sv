//Registro entre decode y execute

module ID_IE (
    input   logic           clk,
    input   logic           rst,


    //Senales de control
    input   logic           RegWriteD,
    input   logic           ResultSrcD,
    input   logic           Mem_WriteD,
    input   logic   [2:0]   ALUControlD,
    input   logic           ALUSrcD,

    output  logic           RegWriteE,
    output  logic           ResultSrcE,
    output  logic           Mem_WriteE,
    output  logic   [2:0]   ALUControlE,
    output  logic           ALUSrcE,




    //Cables del cpu
    input   logic   [31:0]  RD1D,
    input   logic   [31:0]  RD2D,
    input   logic   [31:0]  PCD,
    input   logic   [4:0]   RdD,
    input   logic   [31:0]  ImmExtD,

    output  logic   [31:0]  RD1E,
    output  logic   [31:0]  RD2E,
    output  logic   [31:0]  PCE,
    output  logic   [4:0]   RdE,
    output  logic   [31:0]  ImmExtE
);

    always_ff @(negedge clk) begin 
        if (rst) begin
            RegWriteE <= 1'b0;
            ResultSrcE <= 1'b0;
            Mem_WriteE <= 1'b0;
            ALUControlE <= 3'b0;
            ALUSrcE <= 1'b0;
            RD1E <= 32'b0;
            RD2E <= 32'b0;
            PCE <= 32'b0;
            RdE <= 5'b0;
            ImmExtE <= 32'b0;
        end else begin
            RegWriteE <= RegWriteD;
            ResultSrcE <= ResultSrcD;
            Mem_WriteE <= Mem_WriteD;
            ALUControlE <= ALUControlD;
            ALUSrcE <= ALUSrcD;
            RD1E <= RD1D;
            RD2E <= RD2D;
            PCE <= PCD;
            RdE <= RdD;
            ImmExtE <= ImmExtD;
        end
    end


    
endmodule