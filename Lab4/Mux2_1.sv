//Oscar Conejo 2020234423

module mux2_1 (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic        sel,
    output logic [31:0] out
);

    
    always_comb begin : 
        case (sel)
            1'b0: out = A;
            1'b1: out = B;
            default: out = 32'hDEADBEEF;
        endcase
    end



endmodule