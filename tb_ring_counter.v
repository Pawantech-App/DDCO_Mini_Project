`timescale 1ns / 1ps
module tb_ring_counter;
reg clk;
reg clr;
wire[3:0] out;

initial
begin 
$dumpfile("ring_counter.vcd");
$dumpvars(0,tb_ring_counter); 
end

ring_counter r1 ( .clk(clk), .clr(clr), .out(out));
always #10 clk = ~clk;
initial 
begin
clk = 0;
clr = 0;
#5 clr = 1;
#20 clr = 0;
#250 $finish;
end

initial 
begin
$monitor($time,"clear=%1b,clock=%1b,count=%4b",clr,clk,out);
end

endmodule