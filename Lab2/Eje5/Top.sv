module TopFSM (
    input logic clk,
    input logic rst,
    input logic [3:0] ALUbotones,
    input logic CambioModo

);
    logic muxctrl;
    logic WEreg;
    logic WElfsr;
    logic [4:0] addr_rd;
    logic [4:0] addr_rs1;
    logic [4:0] addr_rs2;
    logic [1:0] aluctrl;
    logic displayctrl;
    logic [5:0] LEDs;
    
    
    logic [15:0] LFSRout;
    logic [15:0] muxout;
    logic [15:0] A;
    logic [15:0] B;
    logic [15:0] ALUout;




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