module fullsub_test;
	reg a, b, c;
	wire diff, borrow;
	fullsub dut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
	initial begin
		$dumpfile("test_fullsub.vcd");
		$dumpvars(0,fullsub_test);
		$display("This is a full subtractor");
		$monitor("a=%b,b=%b,c=%b,diff=%b,borrow=%b",a,b,c,diff,borrow);
		a=0;b=0;c=0;#5;
		a=0;b=0;c=1;#5;
		a=0;b=1;c=0;#5;
		a=0;b=1;c=1;#5;
		a=1;b=0;c=0;#5;
		a=1;b=0;c=1;#5;
		a=1;b=1;c=0;#5;
		a=1;b=1;c=1;#5;
		$finish;
	end
endmodule
