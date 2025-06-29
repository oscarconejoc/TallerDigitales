//Modulo del program counter

module Program_Counter (                         //Señales: 
    input logic                clk,              //Reloj
    input logic                rst,              //Reset
    input logic        [31:0]  PC_Next,          //PC de entrada
    output logic [31:0]  PC_Out                 //PC de salida   
);
    //Lógica del módulo
    always_ff @(posedge clk) begin
        if(!rst) begin              //Mientras en el rst este en bajo la salida será igual a la entrada
            PC_Out <= PC_Next;
        end 
        else begin
            PC_Out <= 32'h00000000;  //Reset
        end 
    end
    
endmodule