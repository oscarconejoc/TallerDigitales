

module Generator (
    input   logic        rst,
    input   logic        clk,
    input   logic        write,
    output  logic [15:0] aleatorio
);
    logic [15:0] aleatorio_sal;
    always_ff @ (posedge clk) begin
        if (!rst) begin
            aleatorio_sal <= 16'b0000000000000000;
        end
        else if(write) begin
                aleatorio_sal <= $urandom%128;
        end    
    end
    assign aleatorio = aleatorio_sal; // Asignar el valor del registro a la salida
endmodule
