//Oscar Conejo 2020234423

module TOP #(parameter WIDTH = 32)(
    input   logic           clk,
    input   logic           rst
);

    wire    [WIDTH-1:0]      mux_pc;
    wire    [WIDTH-1:0]      pc_out;
    wire    [WIDTH-1:0]      pc_4;
    wire    [WIDTH-1:0]      instruction;
    wire    [WIDTH-1:0]      rs1_data;
    wire    [WIDTH-1:0]      rs2_data;
    wire    [WIDTH-1:0]      immediate;
    wire    [WIDTH-1:0]      mux_alu;
    wire    [WIDTH-1:0]      pc_imm;

    mux2_1 if_MUX (
        .A          (pc_4),
        .B          (pc_imm),
        .sel        (),
        .out        (mux_pc)
    );

    adder pc_4_adder (
        .A          (32'd4),
        .B          (pc_out),
        .out        (pc_4)
    );

    PC_register pc (
        .clk        (clk),
        .rst        (rst),
        .data_in    (mux_pc),
        .wr         (1'b1),
        .data_out   (pc_out)
    );

    inst_mem inst_mem (
        .clk        (clk),
        .rst        (rst),
        .data_in    (32'b0),
        .addr       (pc_out),
        .wr         (1'b0),
        .rd         (1'b1),
        .data_out   (instruction)
    );

    Register_bank Registro (
        .clk        (clk),
        .rst        (rst),
        .A1         (instruction[19:15]),
        .A2         (instruction[24:20]),
        .A3         (instruction[11:7]),
        .WE3        (),
        .WD3        (),
        .RD1        (rs1_data),
        .RD2        (rs2_data)
    );

    mem_gen mem_gen (
        .instr      (instruction),

        .data_out   (immediate)
    );

    ALU alu1 (
        .data_in_1  (rs1_data),
        .data_in_2  (mux_alu),
        .func3      (instruction[14:12]),
        .func7      (instruction[31:25]),
        .opcode     (instruction[6:0]),
        .data_out   (),
        .zero       (),
        .comparison ()
    );

    mux2_1 ex_MUX (
        .A          (rs2_data),
        .B          (immediate),
        .sel        (),
        .out        (mux_alu)
    );

    adder pc_imm_adder (
        .A          (pc_out),
        .B          (immediate),
        .out        (pc_imm)
    );

    data_mem data_mem (
        .clk        (clk),
        .rst        (rst),
        .data_in    (),
        .addr       (),
        .wr         (),
        .rd         (),
        .one_byte   (),
        .two_byte   (),
        .four_byte  (),
        .data_out   ()
    );




endmodule