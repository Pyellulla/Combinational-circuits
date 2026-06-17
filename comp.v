module comp(
	input [3:0] a,
	input [3:0] b,
	output y
);
	always @(*) begin
		if (a>b)
			y=1;
		else
			y=0;
endmodule
