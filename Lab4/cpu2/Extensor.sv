//Modulo Extensor

module Extend_Imm (
    input logic         [1:0]   sel,
    input logic         [31:0]  A,
    output logic  [31:0]  Q
);
    // Lógica para el extensor
    always_comb begin
        case(sel)
            2'b00:    Q = {{20{A[31]}}, A [31:20]};
            2'b01:    Q = {{20{A[31]}}, A [31:25], A[11:7]};
            2'b10:    Q = {{19{A[31]}}, A [31], A[7], A [30:25], A [11:8], 1'b0};
            default:  Q = 32'hDEADBEEF; //error
        endcase
    end

endmodule