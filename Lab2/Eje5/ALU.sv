module ALU (
    input    logic [7:0]  A,
    input    logic [7:0]  B,
    input    logic [1:0]        ALUControl,
    input    logic              ALUFlagIn,
    output   logic              ALUFlags,
    output   logic [Ancho-1:0]  ALUResult,
    output   logic              Z
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
                logic [Ancho:0] temp_sum; 
                assign temp_sum = A + B + ALUFlagIn;
                assign ALUResult = temp_sum[Ancho-1:0]; 
                assign ALUFlags = temp_sum[Ancho]; 
            end
            2'b11: begin //resta
                assign {ALUFlags, ALUResult} = A - B - ALUFlagIn;
            end
            default: begin
                assign ALUResult = 7'b1111111;
            end
        endcase

    end

endmodule