module TopFSM (
    input logic clk1,
    input logic rst,
    input logic [3:0] ALUbotones,
    input logic CambioModo,
    output logic [5:0] LEDs,
    
    output logic [3:0] seg_sel,
    output logic [6:0]  seg0       
//    output logic [6:0]  seg1,
//    output logic [6:0]  seg2,
//    output logic [6:0]  seg3

);

    logic muxctrl;
    logic WEreg;
    logic WElfsr;
    logic [4:0] addr_rd;
    logic [4:0] addr_rs1;
    logic [4:0] addr_rs2;
    logic [1:0] aluctrl;
    logic displayctrl;

    logic [15:0] LFSRout;
    logic [15:0] muxout;
    logic [15:0] A;
    logic [15:0] B;
    logic [15:0] ALUout;




    
    clk_wiz_0 instance_name
   (
    // Clock out ports
    .CLK(CLK),     // output CLK
    // Status and control signals
    .reset(!rst), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk1));      // input clk_in1
// INST_TAG_END ------ End INSTANTIATION Template ---------



    fsm_mealy FSM (
        .clk(CLK),
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
        .clk(CLK),
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
        .clk(CLK),
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

    display Display1(
        .enable(displayctrl),
        .bin_in(B),
        .seg0(seg0)
//        .seg1(seg1),
//        .seg2(seg2),
//        .seg3(seg3)
    );
    
    assign seg_sel = 1;

endmodule