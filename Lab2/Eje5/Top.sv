module TopFSM (
    input logic clk,
    input logic rst,
    input logic [3:0] ALUbotones,
    input logic CambioModo,
    output logic muxctrl,
    output logic WEreg,
    output logic WElfsr,
    output logic [4:0] addr_rd,
    output logic [4:0] addr_rs1,
    output logic [4:0] addr_rs2,
    output logic [1:0] aluctrl,
    output logic displayctrl,
    output logic [5:0] LEDs,

    output logic [15:0] LFSRout,
    output logic [15:0] muxout,
    output logic [15:0] A,
    output logic [15:0] B,
    output logic [15:0] ALUout

);
    




    fsm_mealy FSM (
        .clk(clk),
        .rst_n(rst),         
        .ALUbotones(ALUbotones),  
        .CambioModo(CambioModo),   
        .muxctrl(muxctrl),
        .WEreg(WEreg),
        .WElfsr(WElfsr),
        .LEDs(LEDs),
        .addr_rd(addr_rd),
        .addr_rs1(addr_rs1),
        .addr_rs2(addr_rs2),
        .aluctrl(aluctrl),
        .displayctrl(displayctrl) 
    );

    Banco_Registros Banco1 (
        .clk(clk),
        .rst(rst),
        .addr_rs1(addr_rs1),
        .addr_rs2(addr_rs2),
        .addr_rd(addr_rd),
        .data_in(muxout),
        .WE(WEreg),
        .rs1(A),
        .rs2(B)
    );

    Generator LFSR1 (
        .rst(rst),
        .clk(clk),
        .write(WElfsr),
        .aleatorio(LFSRout)
    );

    mux mux1 (
        .A(LFSRout),
        .B(ALUout),
        .sel(muxctrl),
        .out(muxout)
    );

    ALU ALU1(
        .A(A),
        .B(B),
        .ALUControl(aluctrl),
        .ALUResult(ALUout)
    );

endmodule