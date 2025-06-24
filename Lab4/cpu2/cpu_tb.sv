`timescale 1ns/1ps

module cpu_tb ();

    logic        clk;
    logic        rst;
    
    logic [31:0] Result;

    cpu cpu_1 (

        .clk(clk),
        .rst(rst),
        .Result(Result)
    );

    initial begin
        rst = 1;
        clk = 0;
        #20;
        rst = 0;

        $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20 $display("%t: %h",$time,Result);
        #20;
        $finish;        
    end

    initial begin
        clk = 0;
        forever #10 begin
            clk = !clk;
        end
    end

endmodule