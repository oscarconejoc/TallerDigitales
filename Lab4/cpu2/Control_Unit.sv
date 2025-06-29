//Modulo para la unidad de control
module Control_Unit (
    input logic                 clk,
    input logic                 rst,
    input logic              funct7_bit_5,
    input logic              Zero,
    input logic        [6:0] op,
    input logic        [2:0] funct3,
    output logic       PC_Src,
    output logic       Result_Src,
    output logic       Mem_Write,
    output logic       ALU_Src,
    output logic       Reg_Write,      
    output logic [1:0] Imm_Src,
    output logic [2:0] ALU_Control    
);
    //Señales internas de la unidad de control
    logic       Branch;
    logic [1:0] ALU_Op;

    //Compuerta and para los branch
    assign PC_Src = Zero && Branch;

    //Decodificador principal
    always_ff @(posedge clk) begin
        case (op)
            7'b0000011: begin   //Instrucción lw
                Reg_Write   = 1'b1;
                Imm_Src     = 2'b00;
                ALU_Src     = 1'b1;
                Mem_Write   = 1'b0;
                Result_Src  = 1'b1;
                Branch      = 1'b0;
                ALU_Op      = 2'b00;
            end
            7'b0100011: begin   //Instrucción sw
                Reg_Write   = 1'b0;
                Imm_Src     = 2'b01;
                ALU_Src     = 1'b1;
                Mem_Write   = 1'b1;
                Result_Src  = 1'b0;
                Branch      = 1'b0;
                ALU_Op      = 2'b00;
            end
            7'b0110011: begin   //Instrucción tipo R
                Reg_Write   = 1'b1;
                Imm_Src     = 2'b00;
                ALU_Src     = 1'b0;
                Mem_Write   = 1'b0;
                Result_Src  = 1'b0;
                Branch      = 1'b0;
                ALU_Op      = 2'b10;
            end
            7'b1100011: begin   //Instrucción beg
                Reg_Write   = 1'b0;
                Imm_Src     = 2'b10;
                ALU_Src     = 1'b0;
                Mem_Write   = 1'b0;
                Result_Src  = 1'b0;
                Branch      = 1'b1;
                ALU_Op      = 2'b01;
            end
            default: begin 
                Reg_Write   = 1'b0;
                Imm_Src     = 2'b00;
                ALU_Src     = 1'b0;
                Mem_Write   = 1'b0;
                Result_Src  = 1'b0;
                Branch      = 1'b0;
                ALU_Op      = 2'b00;
            end
        endcase 
    end

    //Decodificador para la ALU
    always_ff @(posedge clk) begin
        casez ( { ALU_Op , funct3 , op[5] , funct7_bit_5 } )
            7'b00?????: ALU_Control = 3'b000;       //Instrucción lw y sw   (add)
            7'b01?????: ALU_Control = 3'b001;       //Instrucción beq       (subtract)
            7'b1000000: ALU_Control = 3'b000;       //Instrucción add       (add)
            7'b1000001: ALU_Control = 3'b000;       //Instrucción add       (add)
            7'b1000010: ALU_Control = 3'b000;       //Instrucción add       (add)
            7'b1000011: ALU_Control = 3'b001;       //Instrucción sub       (subtract)
            7'b10010??: ALU_Control = 3'b101;       //Instrucción stl       (set less than)
            7'b10110??: ALU_Control = 3'b011;       //Instrucción or        (or)
            7'b10111??: ALU_Control = 3'b010;       //Instrucción and       (and)
            default: ALU_Control = 3'b000;
        endcase 
    end
    
endmodule