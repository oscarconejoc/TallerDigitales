//Registro entre memory y writeback

module IM_IW (
    input   logic           clk,
    input   logic           rst,


    //Senales de control
    input   logic           RegWriteM,
    input   logic           ResultSrcM,


    output  logic           RegWriteW,
    output  logic           ResultSrcW,




    //Cables del cpu
    input   logic   [31:0]  ALUResultM,
    input   logic   [31:0]  ReadDataM,
    input   logic   [4:0]   RdM,

    output  logic   [31:0]  ALUResultW,
    output  logic   [31:0]  ReadDataW,
    output  logic   [4:0]   RdW
);

    always_ff @(posedge clk) begin 
        if (rst) begin
            RegWriteW <= 1'b0;
            ResultSrcW <= 1'b0;

            ALUResultW <= 32'b0;
            ReadDataW <= 32'b0;
            RdW <= 5'b0;
        end else begin
            RegWriteW <= RegWriteM;
            ResultSrcW <= ResultSrcM;

            ALUResultW <= ALUResultM;
            ReadDataW <= ReadDataM;
            RdW <= RdM;
        end
    end


    
endmodule