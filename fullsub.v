module fullsub(
	input a,
	input b,
	input c,
	output diff,
	output borrow
);
	assign diff = a ^ b ^ c;
	assign borrow = (~a & b) | (c & ~(a ^ b));
endmodule
