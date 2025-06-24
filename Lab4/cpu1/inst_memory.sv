//Oscar Conejo 2020234423

module inst_mem #(parameter WIDTH = 32, parameter DEPTH = 16) (
    input logic                 clk,
    input logic                 rst,
    input logic [WIDTH-1:0]     data_in,
    input logic [DEPTH-1:0]     addr,
    input logic                 wr,
    input logic                 rd,
    output logic [WIDTH-1:0]    data_out
);
    logic [WIDTH-1:0] mem [2^^DEPTH];

    initial begin
        $readmemh("program.mem", mem);
    end

    always_ff @( posedge clk ) begin
        if (wr) mem[addr] <= data_in;
        if (rd) data_out <= mem[addr];
    end
endmodule