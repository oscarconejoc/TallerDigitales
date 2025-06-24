//Oscar Conejo 2020234423

module mem_gen #(parameter IN_WIDTH = 32, parameter OUT_WIDTH = 32) (

    input logic [IN_WIDTH-1:0]     instr,

    output logic [IN_WIDTH-1:0]    data_out
);

    parameter ALI_OP    = 0010011;
    parameter MEM_WR_OP = 0100011;
    parameter MEM_RD_OP = 0000011;
    parameter BR_OP     = 1100011;
    parameter JALR      = 1100111;
    parameter JAL       = 1101111;
    parameter LUI       = 0110111;

    logic [6:0] opcode;
    assign opcode = instr[6:0];


    always_comb begin 
        case (opcode)
            ALI_OP: begin
                case (func3)
                    000: data_out = {19{instr[31]},instr[31:20]};
                    001: data_out = {27'b0,instr[24:20]};
                    010: data_out = {19{instr[31]},instr[31:20]};
                    011: data_out = {19{instr[31]},instr[31:20]};
                    100: data_out = {19{instr[31]},instr[31:20]};
                    101: data_out = {17'b0,instr[31:20]};
                    110: data_out = {19{instr[31]},instr[31:20]};
                    111: data_out = {19{instr[31]},instr[31:20]};
                    default: data_out = 32'hDEADBEEF;
                endcase
            end
            MEM_WR_OP: begin
                data_out = {19{instr[31]},instr[31:25],instr[11:7]};
            end
            MEM_RD_OP: begin
                data_out = {19{instr[31]},instr[31:20]};
            end
            BR_OP: begin
                data_out = {18{instr[31]},instr[31],instr[7],instr[30:25],instr[11:8],1'b0};
            end
            JALR: begin
                data_out = {19{instr[31]},instr[31:20]};
            end
            JAL: begin
                data_out = {12{instr[31]},instr[31],instr[19:12],instr[20],instr[30:21],1'b0};
            end
            LUI: begin
                data_out = {instr[31:12],12'b0};
            end
            default: 
        endcase
    end


endmodule