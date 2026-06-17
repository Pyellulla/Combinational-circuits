module mux(
	input a,
	input b,
	input sel,
	output y
);
	assign y = ( ~sel & a ) | ( sel & b );
endmodule
