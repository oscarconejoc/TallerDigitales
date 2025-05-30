module display (

    input   logic        enable,
    input   logic [15:0] bin_in,
    output  logic [6:0] seg0
//    output  logic [6:0] seg1,
//    output  logic [6:0] seg2,
//    output  logic [6:0] seg3
);

// Cables

    wire [3:0]  Hexa1;
    wire [3:0]  Hexa2;
    wire [3:0]  Hexa3;
    wire [3:0]  Hexa4; 

    HEX HEX1(
    .binario (bin_in),
    .Hexa1    (Hexa1),
    .Hexa2    (Hexa2),
    .Hexa3    (Hexa3),
    .Hexa4    (Hexa4)
    );

    DIS DIS1(
    .Enable(enable),
    .Dis1 (Hexa1),
    .Dis2 (Hexa2),
    .Dis3 (Hexa3),
    .Dis4 (Hexa4),
    .Out1 (seg0)
//    .Out2 (seg1),
//    .Out3 (seg2),
//    .Out4 (seg3)
    );

endmodule


module HEX (
    input  logic [15:0] binario,
    output logic  [3:0] Hexa1,
    output logic  [3:0] Hexa2,
    output logic  [3:0] Hexa3,
    output logic  [3:0] Hexa4
);
    always_comb begin
         Hexa1 = binario[15:12];
         Hexa2 = binario[11:8];
         Hexa3 = binario[7:4];
         Hexa4 = binario[3:0];
    end

    
endmodule

module DIS (
    input              Enable,
    input  logic [3:0] Dis1,
    input  logic [3:0] Dis2,
    input  logic [3:0] Dis3,
    input  logic [3:0] Dis4,

    output logic [6:0] Out1
//    output logic [6:0] Out2,
//    output logic [6:0] Out3,
//    output logic [6:0] Out4
);
   
    
        always_comb begin
            if (Enable) begin
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
            else begin
                Out1 = 7'b1111111;
            end
        end

//        always_comb begin
//            if (Enable) begin
//                unique case (Dis2)
//                        4'b0000: Out2 = 7'b0000001; // 0      orden: a b c d e f g
//                        4'b0001: Out2 = 7'b1001111; // 1
//                        4'b0010: Out2 = 7'b0010010; // 2
//                        4'b0011: Out2 = 7'b0000110; // 3
//                        4'b0100: Out2 = 7'b1001100; // 4
//                        4'b0101: Out2 = 7'b0100100; // 5
//                        4'b0110: Out2 = 7'b0100000; // 6
//                        4'b0111: Out2 = 7'b0001111; // 7
//                        4'b1000: Out2 = 7'b0000000; // 8
//                        4'b1001: Out2 = 7'b0001100; // 9
//                        4'b1010: Out2 = 7'b0001000; // a
//                        4'b1011: Out2 = 7'b1100000; // b
//                        4'b1100: Out2 = 7'b0110001; // c
//                        4'b1101: Out2 = 7'b1000010; // d
//                        4'b1110: Out2 = 7'b0110000; // e
//                        4'b1111: Out2 = 7'b0111000; // f
//                        default: Out2 = 7'b0000000; // Apagado
//                endcase
//            end
//            else begin
//                Out2 = 7'b1111111;
//            end
//        end

//        always_comb begin
//            if (Enable) begin
//                unique case (Dis3)
//                        4'b0000: Out3 = 7'b0000001; // 0      orden: a b c d e f g
//                        4'b0001: Out3 = 7'b1001111; // 1
//                        4'b0010: Out3 = 7'b0010010; // 2
//                        4'b0011: Out3 = 7'b0000110; // 3
//                        4'b0100: Out3 = 7'b1001100; // 4
//                        4'b0101: Out3 = 7'b0100100; // 5
//                        4'b0110: Out3 = 7'b0100000; // 6
//                        4'b0111: Out3 = 7'b0001111; // 7
//                        4'b1000: Out3 = 7'b0000000; // 8
//                        4'b1001: Out3 = 7'b0001100; // 9
//                        4'b1010: Out3 = 7'b0001000; // a
//                        4'b1011: Out3 = 7'b1100000; // b
//                        4'b1100: Out3 = 7'b0110001; // c
//                        4'b1101: Out3 = 7'b1000010; // d
//                        4'b1110: Out3 = 7'b0110000; // e
//                        4'b1111: Out3 = 7'b0111000; // f
//                        default: Out3 = 7'b0000000; // Apagado
//                endcase
//            end
//            else begin
//                Out3 = 7'b1111111;
//            end
//        end

//        always_comb begin
//            if (Enable) begin
//                unique case (Dis4)
//                        4'b0000: Out4 = 7'b0000001; // 0      orden: a b c d e f g
//                        4'b0001: Out4 = 7'b1001111; // 1
//                        4'b0010: Out4 = 7'b0010010; // 2
//                        4'b0011: Out4 = 7'b0000110; // 3
//                        4'b0100: Out4 = 7'b1001100; // 4
//                        4'b0101: Out4 = 7'b0100100; // 5
//                        4'b0110: Out4 = 7'b0100000; // 6
//                        4'b0111: Out4 = 7'b0001111; // 7
//                        4'b1000: Out4 = 7'b0000000; // 8
//                        4'b1001: Out4 = 7'b0001100; // 9
//                        4'b1010: Out4 = 7'b0001000; // a
//                        4'b1011: Out4 = 7'b1100000; // b
//                        4'b1100: Out4 = 7'b0110001; // c
//                        4'b1101: Out4 = 7'b1000010; // d
//                        4'b1110: Out4 = 7'b0110000; // e
//                        4'b1111: Out4 = 7'b0111000; // f
//                        default: Out4 = 7'b0000000; // Apagado
//                endcase
//            end
//            else begin
//                Out4 = 7'b1111111;
//            end
//        end

endmodule