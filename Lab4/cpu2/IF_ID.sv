//Registro entre fetch y decode

module IF_ID (
    input   logic           clk,
    input   logic           rst,
    input   logic   [31:0]  PCF,
    input   logic   [31:0]  InstrF,
    output  logic   [31:0]  PCD,
    output  logic   [31:0]  InstrD
);

    always_ff @(negedge clk) begin 
        if (rst) begin
            PCD <= 32'b0;
            InstrD <= 32'b0;
        end else begin
            PCD <= PCF;
            InstrD <= InstrF;
        end
    end


    
endmodule