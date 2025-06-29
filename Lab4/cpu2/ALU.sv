//Modulo de la ALU sintetizable

module alu (
    input logic        [2:0]  ALUControl,
    input logic        [31:0] A,
    input logic        [31:0] B,
    output logic [31:0] Result,
    output logic        oVerflow,
    output logic        Carry,
    output logic        Negative,
    output logic        Zero
);

    //Señales internas
    logic        Bit_Carry;    //Bit de acarreo por si se hace una resta
    logic        C_out;        //Bit para saber si hay Carry
    logic        Stl;          //Bit para saber si A < B

    //Banderas de la ALU
    assign Zero = (ALUControl[1:0] == 2'b01) ? ~|Result : 1'b0;    //Si el resultado da cero

    //Lógica para el set less than
    assign Stl = oVerflow ^ Negative;           //Si hay un número es menor que otro con la condición de que no haya oVerflow
    
    //Lógica para saber si se da un oVerflow
    always_comb begin
        if ( ALUControl[1] == 0 ) begin       //Si hay una suma o resta
            if ( ALUControl[0] == 0 ) begin     //Si hay una suma
                oVerflow = ( ( A[31] == B[31] ) && ( Result[31] != A[31] ) );
            end else begin 
                oVerflow = ( ( A[31] != B[31] ) && ( Result[31] != A[31] ) );    //Si hay una resta
            end 
        end else begin
            oVerflow = 0;
        end 
    end

    
    //Lógica del MUX que ALUControla la salida de la ALU
    always_comb begin
        case (ALUControl)
            3'b000: Result = A + B;                  //Add               
            3'b001: Result = A - B;                  //sub
            3'b010: Result = A & B;                       //and
            3'b011: Result = A | B;                       //or
            3'b101: Result = { { 30{ 1'b0 } } , Stl };    //slt: set less than 
            default: Result = 32'hDEADBEEF;
        endcase
    end


endmodule 