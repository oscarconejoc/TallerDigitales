//Oscar Conejo 2020234423

module data_mem #(parameter WIDTH = 8, parameter DEPTH = 20) (
    input logic                 clk,
    input logic                 rst,
    input logic [WIDTH-1:0]     data_in,
    input logic [DEPTH-1:0]     addr,
    input logic                 wr,
    input logic                 rd,
    output logic [WIDTH-1:0]    data_out
);
    logic [WIDTH-1:0] mem [2^^DEPTH];

    always_ff @( posedge clk ) begin
        if (rst) begin
            for (int i = 0; i < 2^^DEPTH; i++) begin
                mem[i] <= 0;
            end
        end
        else begin
            if (wr) mem[addr] <= data_in;
            if (rd) data_out <= mem[addr];
        end
    end
endmodule