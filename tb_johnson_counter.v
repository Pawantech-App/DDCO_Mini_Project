module tb_johnson_counter;
reg clk,clr;
wire [3:0] out;

initial
begin
$dumpfile("johnson_counter.vcd");
$dumpvars(0,tb_johnson_counter);
end

johnson_ctr j (.out(out), .clr(clr), .clk(clk));
always
#5 clk =~clk;
initial
begin
clr=1'b1; clk=1'b0;
#20 clr= 1'b0;
end

initial
begin
$monitor( $time, "clr=%b, clk=%b, out= %b", clr,clk,out);
#105 $finish;
end

endmodule