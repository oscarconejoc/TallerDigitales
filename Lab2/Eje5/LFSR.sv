

module Generator (
    input   logic        rst,
    input   logic        clk,
    input   logic        write,
    output  logic [15:0] aleatorio
);
    logic [15:0] aleatorio_sal;
    always_ff @ (posedge clk) begin
        if (rst == 0) 
            aleatorio_sal <= 16'hACE1;
        else if(write) 
                aleatorio_sal <= {aleatorio_sal[14:0],aleatorio_sal[15]^aleatorio_sal[13]^aleatorio_sal[12]^aleatorio_sal[10]};          
    end
    assign aleatorio = aleatorio_sal; // Asignar el valor del registro a la salida

endmodule




