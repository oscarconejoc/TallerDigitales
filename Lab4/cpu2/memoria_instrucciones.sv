//Modulo de Memoria de Instrucciones 

module instrmem(
    input logic                 clk,
    input logic                 rst,
    input logic           [31:0] A,
    output logic          [31:0] RD
);

    always_ff @(posedge clk) begin 
        if (rst) RD <= 32'b0;
        else if (!rst) begin
            case (A)
            32'h00000000: RD <= 32'h3e802403;    // lw x8, 1000(x0)
            32'h00000004: RD <= 32'h3ec02483;    // lw x9, 1004(x0) 
            32'h00000008: RD <= 32'h00000033;    //nop
            32'h0000000c: RD <= 32'h00000033;    //nop
            32'h00000010: RD <= 32'h00000033;    //nop
            32'h00000014: RD <= 32'h00000033;    //nop
            32'h00000018: RD <= 32'h00940533;    // add x10, x8, x9
            32'h0000001c: RD <= 32'h409405B3;    // sub x11, x8, x9
            32'h00000020: RD <= 32'h00947633;    // and x12, x8, x9
            32'h00000024: RD <= 32'h009466B3;    // or x13, x8, x9
            default:      RD <= 32'hDEADBEEF;    //error
        endcase
      end
    end

endmodule