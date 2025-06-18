//Oscar Conejo 2020234423

module data_mem #(parameter WIDTH = 32, parameter DEPTH = 20) (
    input logic                 clk,
    input logic                 rst,
    input logic [WIDTH-1:0]     data_in,
    input logic [DEPTH-1:0]     addr,
    input logic                 wr,
    input logic                 rd,
    input logic                 one_byte,
    input logic                 two_byte,
    input logic                 four_byte,
    output logic [WIDTH-1:0]    data_out
);
    logic [7:0] mem [2^^DEPTH];

    always_ff @( posedge clk ) begin
        if (rst) begin
            for (int i = 0; i < 2^^DEPTH; i++) begin
                mem[i] <= 0;
            end
        end
        else begin
            if (wr) begin
                if (one_byte) mem[addr] <= data_in[7:0];
                if (two_byte) begin
                    mem[addr]   <= data_in[7:0];
                    mem[addr+1] <= data_in[16:8];
                end
                if (four_byte) begin
                    mem[addr]   <= data_in[7:0];
                    mem[addr+1] <= data_in[15:8];
                    mem[addr+2] <= data_in[23:16];
                    mem[addr+3] <= data_in[31:24];
                end
            end
            if (rd) begin
                if (one_byte) data_out <= {24'b0,mem[addr]};
                if (two_byte) begin
                    data_out <= {16'b0,mem[addr+1],mem[addr]};
                end
                if (four_byte) begin
                    data_out <= {mem[addr+3],mem[addr+2],mem[addr+1],mem[addr]};
            end
            
        end
    end
endmodule