//Registro entre execute y memory

module IE_IM (
    input   logic           clk,
    input   logic           rst,


    //Senales de control
    input   logic           RegWriteE,
    input   logic           ResultSrcE,
    input   logic           Mem_WriteE,


    output  logic           RegWriteM,
    output  logic           ResultSrcM,
    output  logic           Mem_WriteM,




    //Cables del cpu
    input   logic   [31:0]  ALUResultE,
    input   logic   [31:0]  WriteDataE,
    input   logic   [4:0]   RdE,

    output  logic   [31:0]  ALUResultM,
    output  logic   [31:0]  WriteDataM,
    output  logic   [4:0]   RdM
);

    always_ff @(posedge clk) begin 
        if (rst) begin
            RegWriteM <= 1'b0;
            ResultSrcM <= 1'b0;
            Mem_WriteM <= 1'b0;

            ALUResultM <= 32'b0;
            WriteDataM <= 32'b0;
            RdM <= 5'b0;
        end else begin
            RegWriteM <= RegWriteE;
            ResultSrcM <= ResultSrcE;
            Mem_WriteM <= Mem_WriteE;

            ALUResultM <= ALUResultE;
            WriteDataM <= WriteDataE;
            RdM <= RdE;
        end
    end


    
endmodule