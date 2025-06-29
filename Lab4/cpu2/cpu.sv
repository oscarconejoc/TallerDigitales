
module cpu (
    input logic  clk,
    input logic  rst,
    output logic [31:0] Result,
    output logic [31:0] InstrF,
    input logic [31:0] PCNext,
    output logic [31:0] PCNextF,
    output logic [31:0] PCPlus4,
    output logic [31:0] PCF
);
    //Señales de conexión ("cables") de los modulos
    logic [31:0] PCD;
    logic [31:0] PCE;



    
    logic [31:0] InstrD;


    logic [31:0] WriteDataE;
    logic [31:0] WriteDataM;



    logic [31:0] SrcA;
    logic [31:0] SrcB;


    logic [31:0] ALUResultE;
    logic [31:0] ALUResultM;
    logic [31:0] ALUResultW;



    logic [31:0] ReadDataM;
    logic [31:0] ReadDataW;


    logic [31:0] RD1D;
    logic [31:0] RD2D;
    logic [31:0] RD1E;
    logic [31:0] RD2E;



    


    logic [31:0] PCTarget;


    


    logic [31:0] ImmExtD;
    logic [31:0] ImmExtE;


    logic        Zero;


    logic   [4:0]   RdE;
    logic   [4:0]   RdM;
    logic   [4:0]   RdW;

    //Señales de control
    logic [1:0]  ImmSrc;


    logic [2:0]  ALUControlD;
    logic [2:0]  ALUControlE;


    logic        RegWriteD;
    logic        RegWriteE;
    logic        RegWriteM;
    logic        RegWriteW;


    logic        ResultSrcD;
    logic        ResultSrcE;
    logic        ResultSrcM;
    logic        ResultSrcW;


    logic        MemWriteD;
    logic        MemWriteE;
    logic        MemWriteM;


    logic        PCSrc;


    logic        ALUSrcD;
    logic        ALUSrcE;

//    //Instancia de la unidad de control
//    Control_Unit Control_Unit_1 (
//        .clk(clk),
//        .rst(rst),
//        .Zero           (Zero),
//        .op             (InstrD[6:0]),
//        .funct3         (InstrD[14:12]),
//        .funct7_bit_5   (InstrD[30]),
//        .PC_Src         (PCSrc),
//        .Result_Src     (ResultSrcD),
//        .Mem_Write      (MemWriteD),
//        .ALU_Src        (ALUSrcD),
//        .Reg_Write      (RegWriteD),
//        .Imm_Src        (ImmSrc),
//        .ALU_Control    (ALUControlD)
//    );
    
//    //Instancia de la memoria de instrucciones
//    instrmem  imem (
//        .clk(clk),
//        .rst(rst),
//        .A      (/*PCF*/),
//        .RD     (InstrF)
//    );

//    //Instancia de el banco de registros register_bank
//    Register_bank register_bank (
//        .clk            (clk), 
//        .rst            (rst), 
//        .WE3            (RegWriteW), 
//        .A1             (InstrD[19:15]),  
//        .A2             (InstrD[24:20]),  
//        .A3             (RdW),  
//        .WD3            (Result), 
//        .RD1            (RD1D), 
//        .RD2            (RD2D)          
//    );

//    //Instancia de la ALU
//    alu alu_1 (
//        .ALUControl     (ALUControlE),
//        .A              (RD1E),
//        .B              (SrcB),
//        .Result         (ALUResultE),
//        .oVerflow       (),
//        .Carry          (),
//        .Negative       (),
//        .Zero           (Zero)
//    );

//    //Instancia de la memoria de datos dmem
//    data_memory dmem (
//        .clk            (clk),
//        .rst            (rst),
//        .WE             (MemWriteM),
//        .RE             (ResultSrcM),
//        .A              (ALUResultM),
//        .WD             (WriteDataM),
//        .RD             (ReadDataM)
//    );

//    //Instancia del MUX del PC
//    MUX_2 mux_pc (
//        .Selection      (1'b0/*PCSrc*/),
//        .A              (PCPlus4),
//        .B              (0/*PCTarget*/),
//        .Result         (PCNextF)
//    );

//    //Instancia del MUX de la ALU
//    MUX_2 mux_alu_src(
//        .Selection      (ALUSrcE),
//        .A              (RD2E),
//        .B              (ImmExtE),
//        .Result         (SrcB)
//    );

//    //Instancia del MUX del resultado
//    MUX_2 mux_result(
//        .Selection      (ResultSrcW),
//        .A              (ALUResultW),
//        .B              (ReadDataW),
//        .Result         (Result)
//    );

//    //Instancia del sumador del PC + 4 
//    Adder pc_4_adder (
//        .A              (PCF),
//        .B              (32'h00000004),
//        .Cin            (1'b0),
//        .Sum            (PCPlus4),
//        .Cout           ()
//    );

//    //Instancia del sumador del PC + el inmediato  
//    Adder  pc_target_adder (
//        .A              (PCE),
//        .B              (ImmExtE),
//        .Cin            (1'b0),
//        .Sum            (PCTarget),
//        .Cout           ()
//    );

//    //Instancia del extensro de signo
//    Extend_Imm Extend (
//        .sel            (ImmSrc),
//        .A              (InstrD[31:0]),
//        .Q              (ImmExtD)
//    );

    //Instancia del PC
    Program_Counter pc (
        .clk     (clk),
        .rst     (rst),
        .PC_Next (PCNext),
        .PC_Out  (PCF)
    );

//    //Instancia del IF/ID
//    IF_ID reg1 (
//        .clk    (clk),
//        .rst    (rst),
//        .PCF    (PCF),
//        .InstrF (InstrF),
//        .PCD    (PCD),
//        .InstrD (InstrD)
//    );

//    //Instancia del ID/IE
//    ID_IE reg2(
//        .clk        (clk),
//        .rst        (rst),

//        .RegWriteD  (RegWriteD),
//        .ResultSrcD (ResultSrcD),
//        .Mem_WriteD (MemWriteD),
//        .ALUControlD(ALUControlD),
//        .ALUSrcD    (ALUSrcD),

//        .RegWriteE  (RegWriteE),
//        .ResultSrcE (ResultSrcE),
//        .Mem_WriteE (MemWriteE),
//        .ALUControlE(ALUControlE),
//        .ALUSrcE    (ALUSrcE),

//        .RD1D       (RD1D),
//        .RD2D       (RD2D),
//        .PCD        (PCD),
//        .RdD        (InstrD[11:7]),
//        .ImmExtD    (ImmExtD),

//        .RD1E       (RD1E),
//        .RD2E       (RD2E),
//        .PCE        (PCE),
//        .RdE        (RdE),
//        .ImmExtE    (ImmExtE)
//    );

//    //Instancia del IE/IM

//    IE_IM reg3 (
//        .clk            (clk),
//        .rst            (rst),

//        .RegWriteE      (RegWriteE),
//        .ResultSrcE     (ResultSrcE),
//        .Mem_WriteE     (MemWriteE),

//        .RegWriteM      (RegWriteM),
//        .ResultSrcM     (ResultSrcM),
//        .Mem_WriteM     (MemWriteM),

//        .ALUResultE     (ALUResultE),
//        .WriteDataE     (RD2E),
//        .RdE            (RdE),

//        .ALUResultM     (ALUResultM),
//        .WriteDataM     (WriteDataM),
//        .RdM            (RdM)
//    );

//    //Instancia del IM/IW
//    IM_IW reg4 (
//        .clk            (clk),
//        .rst            (rst),

//        .RegWriteM      (RegWriteM),
//        .ResultSrcM     (ResultSrcM),

//        .RegWriteW      (RegWriteW),
//        .ResultSrcW     (ResultSrcW),

//        .ALUResultM     (ALUResultM),
//        .ReadDataM      (ReadDataM),
//        .RdM            (RdM),

//        .ALUResultW     (ALUResultW),
//        .ReadDataW      (ReadDataW),
//        .RdW            (RdW)
//    );


endmodule