`timescale 1ns/1ps

module pc_tb ();

    logic        clk;
    logic        rst;
    
    logic [31:0] PC_Next;
    logic [31:0]  PC_Out;

    //Instancia del PC
    Program_Counter pc (
        .clk     (clk),
        .rst     (rst),
        .PC_Next (PC_Next),
        .PC_Out  (PC_Out)
    );

    initial begin
        rst = 1;
        clk = 0;
        PC_Next = 32'b0;
        #50;
        rst = 0;
      
    end

    initial begin
        clk = 0;
        forever #10 begin
            clk = !clk;
        end
    end

endmodule