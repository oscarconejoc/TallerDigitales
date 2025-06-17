//Oscar Conejo 2020234423

module ALU (
    input logic     [31:0]  data_in_1,
    input logic     [31:0]  data_in_2,
    input logic     [2:0]   func3,
    input logic     [6:0]   func7,
    input logic     [6:0]   opcode,
    output logic    [31:0]  data_out,
    //output logic            carry,
    output logic            zero,
    output logic            comparison
);

    parameter ALI_OP    = 0010011;
    parameter AL_OP     = 0110011;
    parameter MEM_WR_OP = 0100011;
    parameter MEM_RD_OP = 0000011;
    parameter BR_OP     = 1100011;
    parameter JALR      = 1100111;
    parameter LUI       = 0110111;

    always_comb begin 
        case (opcode)
            AL_OP: begin
                case (func3)
                    000: begin
                        if (func7 == 0000000) data_out = data_in_1 + data_in_2; //add
                        if (func7 == 0100000) data_out = data_in_1 - data_in_2; //sub
                    end
                    001: data_out = data_in_1 << data_in_2; //sll
                    010: data_out = (signed(data_in_1) < signed(data_in_2)) ? 1 : 0; //slt
                    011: data_out = (unsigned(data_in_1) < unsigned(data_in_2)) ? 1 : 0; //sltu 
                    100: data_out = data_in_1 ^ data_in_2; //xor
                    101: begin
                        if (func7 == 0000000) data_out = data_in_1 >> data_in_2; //srl
                        if (func7 == 0100000) data_out = signed(data_in_1) >>> data_in_2; //sra
                    end
                    110: data_out = data_in_1 | data_in_2; //or
                    111: data_out = data_in_1 & data_in_2; //and
                    default: data_out = 32'hDEADBEEF;
                endcase
            end
            ALI_OP: begin
                case (func3)
                    000: data_out = signed(data_in_1) + signed(data_in_2); //addi
                    001: data_out = data_in_1 << data_in_2; //slli
                    010: data_out = (signed(data_in_1) < signed(data_in_2)) ? 1 : 0; //slti
                    011: data_out = (unsigned(data_in_1) < unsigned(data_in_2)) ? 1 : 0; //sltiu
                    100: data_out = data_in_1 ^ data_in_2; //xori
                    101: begin
                        if (func7 == 0000000) data_out = data_in_1 >> data_in_2; //srli
                        if (func7 == 0100000) data_out = signed(data_in_1) >>> data_in_2; //srai
                    end
                    110: data_out = data_in_1 | data_in_2; //ori
                    111: data_out = data_in_1 & data_in_2; //andi
                    default: data_out = 32'hDEADBEEF;
                endcase
            end
            MEM_WR_OP: begin
                data_out = signed(data_in_1) + signed(data_in_2); //addr for sb, sh, sw
            end
            MEM_RD_OP: begin
                data_out = signed(data_in_1) + signed(data_in_2); //addr for lb, lh, lw, lbu, lhu
            end
            BR_OP: begin
                case (func3)
                    000: comparison = (signed(data_in_1) == signed(data_in_2)) ? 1 : 0; //beg
                    001: comparison = (signed(data_in_1) == signed(data_in_2)) ? 0 : 1; //bne
                    100: comparison = (signed(data_in_1) <  signed(data_in_2)) ? 1 : 0; //blt
                    101: comparison = (signed(data_in_1) >= signed(data_in_2)) ? 1 : 0; //bge
                    110: comparison = (unsigned(data_in_1) <  unsigned(data_in_2)) ? 1 : 0; //bltu
                    111: comparison = (unsigned(data_in_1) >= unsigned(data_in_2)) ? 1 : 0; //bgeu
                    default: data_out = 32'hDEADBEEF;
                endcase
            end
            JALR: begin
                data_out = signed(data_in_1) + signed(data_in_2); //jalr
            end
            LUI: begin
                data_out = data_in_2; //lui
            end
            default: 
        endcase
    end

    assign zero = (data_out == 0) ? 1 : 0; //zero logic
endmodule