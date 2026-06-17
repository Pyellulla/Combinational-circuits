module fulladd (
	input A, B,
	input cin,
	output sum,
	output cout
);
	assign sum = A ^ B ^ cin ;
	assign cout = (A & B) | (B & cin) | (cin & A);
endmodule 
