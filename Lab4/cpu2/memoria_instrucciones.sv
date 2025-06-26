//Modulo de Memoria de Instrucciones 

module instrmem(
    input logic           [31:0] A,
    output logic          [31:0] RD
);

    always_comb begin 
        case (A)
            32'h00400000: RD = 32'h3e802403;    // lw x8, 1000(x0)
            32'h00400004: RD = 32'h3ec02483;    // lw x9, 1004(x0) 
            32'h00400008: RD = 32'h00000033;    //nop
            32'h0040000c: RD = 32'h00000033;    //nop
            32'h00400010: RD = 32'h00000033;    //nop
            32'h00400014: RD = 32'h00000033;    //nop
            32'h00400018: RD = 32'h00940533;    // add x10, x8, x9
            32'h0040001c: RD = 32'h409405B3;    // sub x11, x8, x9
            32'h00400020: RD = 32'h00947633;    // and x12, x8, x9
            32'h00400024: RD = 32'h009466B3;    // or x13, x8, x9
            default:      RD = 32'hDEADBEEF;    //error
        endcase
    end

endmodule