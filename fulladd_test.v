module fulladd_test;
	reg a;
	reg b;
	reg c;
	wire sum;
	wire cout;
	fulladd dut(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
	initial begin
		$dumpfile("test_fulladd.vcd");
		$dumpvars(0,fulladd_test);
		$display("This is a fulladder");
		$monitor("a=%b,b=%b,c=%b,sum=%b,cout=%b",a,b,c,sum,cout);
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
