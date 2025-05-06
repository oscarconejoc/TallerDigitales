

module Generator (
    input   logic        rst,
    input   logic        clk,
    input   logic        write,
    input   logic        select,
    output  logic [7:0] aleatorio
);
    logic [15:0] aleatorio_sal;
    always_ff @ (posedge clk) begin
        if (rst) begin
            aleatorio_sal <= 7'b0000000;
        end
        else if(write && select) begin
                aleatorio_sal <= $urandom%128;
        end    
    end
    assign aleatorio = aleatorio_sal; // Asignar el valor del registro a la salida
endmodule
