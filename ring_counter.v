module ring_counter (input clk, clr, output [3:0] out);
reg[3:0] cnt;
always @(posedge clk)
	if (clr)
		cnt = 4'b0001;
	else
	begin
		cnt <= cnt<<1;
		cnt[0] <= cnt[3];
	end
	assign out=cnt;
endmodule