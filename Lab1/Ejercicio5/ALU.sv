module ALU # (parameter Ancho = 4)(
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    input    logic [3:0]        ALUControl,
    input    logic              ALUFlagIn,
    output   logic              ALUFlags,
    output   logic [Ancho-1:0]  ALUResult,
    output   logic              Z
);
    always_comb begin  
        case (ALUControl)
            4'h0: begin //and
                assign ALUResult = A & B;
            end
            4'h1: begin //or
                assign ALUResult = A | B;
            end
            4'h2: begin //suma
                logic [Ancho:0] temp_sum; 
                assign temp_sum = A + B + ALUFlagIn;
                assign ALUResult = temp_sum[Ancho-1:0]; 
                assign ALUFlags = temp_sum[Ancho]; 
            end
            4'h3: begin //incremento
                if (ALUFlagIn) begin
                    assign ALUResult = B + 1;
                end
                else begin
                    assign ALUResult = A + 1;
                end
            end
            4'h4: begin //decremento
                if (ALUFlagIn) begin
                    assign ALUResult = B - 1;
                end
                else begin
                    assign ALUResult = A - 1;
                end
            end
            4'h5: begin //not
                if (ALUFlagIn) begin
                    assign ALUResult = ~B;
                end
                else begin
                    assign ALUResult = ~A;
                end
            end
            4'h6: begin //resta
                assign {ALUFlags, ALUResult} = A - B - ALUFlagIn;
            end
            4'h7: begin //xor
                assign ALUResult = A ^ B;
            end
            4'h8: begin //corriemiento Izquierda
                logic [Ancho - 1:0] resul_ci;
                logic carry_o;
                    
                resul_ci = A << B;
                carry_o = A >> (B - 1);
                
                ALUResult = resul_ci;
            end
            
            4'h9: begin //corriemiento Derecha
                logic [Ancho - 1:0] resul_cd;
                logic carry_o;
                
                resul_cd = A >> B;
                carry_o = A[Ancho - 1];
                
                ALUResult = resul_cd;
            end
            default: begin
                assign ALUResult = 4'b1111;
            end
        endcase
        if (ALUResult == 0) begin
            assign Z = 1;
        end
        else assign Z = 0;

    end

endmodule