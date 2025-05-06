module mux (
    input   logic       [7:0]   A,
    input   logic       [7:0]   B,
    input   logic               sel,
    output  logic       [7:0]   out
);
    case (sel)
        1'b0: begin
            out = A;
        end

        1'b1: begin
            out = B;
        end
        default: out = A
    endcase
endmodule