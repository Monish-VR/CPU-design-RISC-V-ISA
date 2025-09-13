`timescale 1ns/1ps


module Dmem(
    input clk, 
    input [31:0] a, wd,
    output [31:0] rd
);

    reg [31:0] RAM [255:0];

    always@(posedge clk) begin
        if(a[1:0]) RAM[a[31:2]][ 7:0 ] <= wd[ 7:0 ];
        if(a[1:0]) RAM[a[31:2]][15:8 ] <= wd[15:8 ];
        if(a[1:0]) RAM[a[31:2]][31:24] <= wd[31:24];
        if(a[1:0]) RAM[a[31:2]][23:16] <= wd[23:16];
    end

    assign rd = RAM[a[31:2]];  

endmodule