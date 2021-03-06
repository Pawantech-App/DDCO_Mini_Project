module invert (input wire i, output wire o);
   assign o = !i;
endmodule

module and2 (input wire i0, i1, output wire o);
  assign o = i0 & i1;
endmodule

module mux2 (input wire i0, i1, j, output wire o);
  assign o = (j==0)?i0:i1;
endmodule


module df (input wire clk, in, output wire out);
  reg df_out;
  always@(posedge clk) df_out <= in;
  assign out = df_out;
endmodule

module dfr (input wire clk, reset, in, output wire out);
  wire reset_, df_in, clk_, o;
  
  invert invert_0 (reset, reset_);
  and2 and2_0 (in, reset_, df_in);
  
  df df_0 (clk, df_in, o);
  df df_1 (clk_, o, out);
endmodule

module dfl(input wire clk, load, in, output wire out);
	wire _in;
	mux2 mux2_0(out, in, load, _in);
	df df_1(clk, _in, out);
endmodule

