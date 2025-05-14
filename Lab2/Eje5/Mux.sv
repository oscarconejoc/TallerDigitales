module mux (
    input   logic       [15:0]   A,
    input   logic       [15:0]   B,
    input   logic               sel,
    output  logic       [15:0]   out
);
always_comb begin
    case (sel)
        1'b0: begin
            assign out = A;
        end

        1'b1: begin
            assign out = B;
        end
        default: assign out = A;
    endcase
end
endmodule