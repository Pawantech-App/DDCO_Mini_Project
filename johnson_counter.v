module johnson_counter(clk, clr, out);
input clk,clr;
output [3:0] out;
reg [3:0] dff;
always @(posedge clk)
begin
	if(clr)
		dff=4'b0000;
	else
	begin
		dff[3]<=dff[2];
		dff[2]<=dff[1];
		dff[1]<=dff[0];
		dff[0]<=(~dff[3]);
	end
end
assign out = dff;
endmodule