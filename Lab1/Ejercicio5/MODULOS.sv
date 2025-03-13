module sumador # (parameter Ancho = 8)(

    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES,
    output   logic              Bandera
);
    assign {Bandera, RES} = A + B;

endmodule

module restador # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES,
    output   logic              Bandera
);
    assign {Bandera, RES} = A - B;

endmodule

module mod_and # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A & B;

endmodule

module mod_or # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A | B;

endmodule

module corrimiento_D # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A >> B;

endmodule

module corrimiento_I # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A << B;

endmodule

module incrementar_1 # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A + 1;

endmodule

module mod_not # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    output   logic [Ancho-1:0]  RES
);
    assign RES = ~A;

endmodule

module mod_xor # (parameter Ancho = 8)(
    
    input    logic [Ancho-1:0]  A,
    input    logic [Ancho-1:0]  B,
    output   logic [Ancho-1:0]  RES
);
    assign RES = A ^ B;

endmodule