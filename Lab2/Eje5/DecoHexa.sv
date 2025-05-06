module TOP (

    input   logic        rst,
    input   logic        clk,
    input   logic        write,
    input   logic        select,
    output  logic [15:0] aleatorio,
    output  logic [3:0] Hexa1,
    output  logic [3:0] Hexa2,
    output  logic [3:0] Hexa3,
    output  logic [3:0] Hexa4,
    output  logic [6:0] Result1,
    output  logic [6:0] Result2,
    output  logic [6:0] Result3,
    output  logic [6:0] Result4
);

// Cables

    wire [15:0] GenRes ;
    wire [3:0]  Display1 ;
    wire [3:0]  Display2 ;
    wire [3:0]  Display3 ;
    wire [3:0]  Display4 ; 

    Generator Generator1(
    .rst       (rst),
    .clk       (clk),
    .write     (write),
    .select    (select),
    .aleatorio (GenRes)
    );

    assign aleatorio = GenRes;

    HEX HEX1(
    .binario (GenRes),
    .numero1  (Display1),
    .numero2  (Display2),
    .numero3  (Display3),
    .numero4  (Display4),
    .Hexa1    (Hexa1),
    .Hexa2    (Hexa2),
    .Hexa3    (Hexa3),
    .Hexa4    (Hexa4)
    );

    DIS DIS1(
    .Dis1 (Display1),
    .Dis2 (Display2),
    .Dis3 (Display3),
    .Dis4 (Display4),
    .Out1 (Result1),
    .Out2 (Result2),
    .Out3 (Result3),
    .Out4 (Result4)
    );

endmodule

module Generator (
    input   logic        rst,
    input   logic        clk,
    input   logic        write,
    input   logic        select,
    output  logic [15:0] aleatorio
);
    logic [15:0] aleatorio_sal;
    always_ff @ (posedge clk) begin
        if (rst) begin
            aleatorio_sal <= 16'b000000000000000;
        end
        else if(write && select) begin
                aleatorio_sal <= $urandom%65535;
        end    
    end
    assign aleatorio = aleatorio_sal; // Asignar el valor del registro a la salida
endmodule

module HEX (
    input  logic [15:0] binario,
    output logic  [3:0] numero1,
    output logic  [3:0] numero2,
    output logic  [3:0] numero3,
    output logic  [3:0] numero4,
    output logic  [3:0] Hexa1,
    output logic  [3:0] Hexa2,
    output logic  [3:0] Hexa3,
    output logic  [3:0] Hexa4
);
    always_comb begin
        assign numero1 = binario[15:12];
        assign numero2 = binario[11:8];
        assign numero3 = binario[7:4];
        assign numero4 = binario[3:0];

        assign Hexa1 = numero1;
        assign Hexa2 = numero2;
        assign Hexa3 = numero3;
        assign Hexa4 = numero4;
    end

    
endmodule

module DIS (
    input  logic       Enable,
    input  logic [3:0] Dis1,
    input  logic [3:0] Dis2,
    input  logic [3:0] Dis3,
    input  logic [3:0] Dis4,

    output logic [6:0] Out1,
    output logic [6:0] Out2,
    output logic [6:0] Out3,
    output logic [6:0] Out4
);
    if Enable begin
        always_comb begin
            unique case (Dis1)
                4'b0000: Out1 = 7'b0000001; // 0      orden: a b c d e f g
                4'b0001: Out1 = 7'b1001111; // 1
                4'b0010: Out1 = 7'b0010010; // 2
                4'b0011: Out1 = 7'b0000110; // 3
                4'b0100: Out1 = 7'b1001100; // 4
                4'b0101: Out1 = 7'b0100100; // 5
                4'b0110: Out1 = 7'b0100000; // 6
                4'b0111: Out1 = 7'b0001111; // 7
                4'b1000: Out1 = 7'b0000000; // 8
                4'b1001: Out1 = 7'b0001100; // 9
                4'b1010: Out1 = 7'b0001000; // a
                4'b1011: Out1 = 7'b1100000; // b
                4'b1100: Out1 = 7'b0110001; // c
                4'b1101: Out1 = 7'b1000010; // d
                4'b1110: Out1 = 7'b0110000; // e
                4'b1111: Out1 = 7'b0111000; // f
                default: Out1 = 7'b0000000; // Apagado
            endcase
        end

        always_comb begin
            unique case (Dis2)
                4'b0000: Out2 = 7'b0000001; // 0      orden: a b c d e f g
                4'b0001: Out2 = 7'b1001111; // 1
                4'b0010: Out2 = 7'b0010010; // 2
                4'b0011: Out2 = 7'b0000110; // 3
                4'b0100: Out2 = 7'b1001100; // 4
                4'b0101: Out2 = 7'b0100100; // 5
                4'b0110: Out2 = 7'b0100000; // 6
                4'b0111: Out2 = 7'b0001111; // 7
                4'b1000: Out2 = 7'b0000000; // 8
                4'b1001: Out2 = 7'b0001100; // 9
                4'b1010: Out2 = 7'b0001000; // a
                4'b1011: Out2 = 7'b1100000; // b
                4'b1100: Out2 = 7'b0110001; // c
                4'b1101: Out2 = 7'b1000010; // d
                4'b1110: Out2 = 7'b0110000; // e
                4'b1111: Out2 = 7'b0111000; // f
                default: Out2 = 7'b0000000; // Apagado
            endcase
        end

        always_comb begin
            unique case (Dis3)
                4'b0000: Out3 = 7'b0000001; // 0      orden: a b c d e f g
                4'b0001: Out3 = 7'b1001111; // 1
                4'b0010: Out3 = 7'b0010010; // 2
                4'b0011: Out3 = 7'b0000110; // 3
                4'b0100: Out3 = 7'b1001100; // 4
                4'b0101: Out3 = 7'b0100100; // 5
                4'b0110: Out3 = 7'b0100000; // 6
                4'b0111: Out3 = 7'b0001111; // 7
                4'b1000: Out3 = 7'b0000000; // 8
                4'b1001: Out3 = 7'b0001100; // 9
                4'b1010: Out3 = 7'b0001000; // a
                4'b1011: Out3 = 7'b1100000; // b
                4'b1100: Out3 = 7'b0110001; // c
                4'b1101: Out3 = 7'b1000010; // d
                4'b1110: Out3 = 7'b0110000; // e
                4'b1111: Out3 = 7'b0111000; // f
                default: Out3 = 7'b0000000; // Apagado
            endcase
        end

        always_comb begin
            unique case (Dis4)
                4'b0000: Out4 = 7'b0000001; // 0      orden: a b c d e f g
                4'b0001: Out4 = 7'b1001111; // 1
                4'b0010: Out4 = 7'b0010010; // 2
                4'b0011: Out4 = 7'b0000110; // 3
                4'b0100: Out4 = 7'b1001100; // 4
                4'b0101: Out4 = 7'b0100100; // 5
                4'b0110: Out4 = 7'b0100000; // 6
                4'b0111: Out4 = 7'b0001111; // 7
                4'b1000: Out4 = 7'b0000000; // 8
                4'b1001: Out4 = 7'b0001100; // 9
                4'b1010: Out4 = 7'b0001000; // a
                4'b1011: Out4 = 7'b1100000; // b
                4'b1100: Out4 = 7'b0110001; // c
                4'b1101: Out4 = 7'b1000010; // d
                4'b1110: Out4 = 7'b0110000; // e
                4'b1111: Out4 = 7'b0111000; // f
                default: Out4 = 7'b0000000; // Apagado
            endcase
        end
    end

endmodule
