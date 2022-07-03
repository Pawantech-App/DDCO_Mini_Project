module johnson_ctr(input wire clk, reset, in, output wire out);
	wire in_;
	assign out = in;
	dfl dfl_0 (clk, reset, in, out);
	assign in = out;
	dfr dfr_1 (clk, reset, in, out);
	assign in = out;
	dfr dfr_2 (clk, reset, in, out);
	assign in = out;
	dfr dfr_3 (clk, reset, in, out);
	invert in_0(out, in_);
	assign out = in_;
endmodule
