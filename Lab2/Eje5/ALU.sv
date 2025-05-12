module ALU (
    input    logic [15:0]       A,
    input    logic [15:0]       B,
    input    logic [1:0]        ALUControl,
    output   logic [15:0]       ALUResult
);
    always_comb begin  
        case (ALUControl)
            2'b00: begin //and
                assign ALUResult = A & B;
            end
            2'b01: begin //or
                assign ALUResult = A | B;
            end
            2'b10: begin //suma
                assign ALUResult = A + B;
            end
            2'b11: begin //resta
                assign ALUResult = A - B;
            end
            default: begin
                assign ALUResult = 7'b1111111;
            end
        endcase

    end

endmodule