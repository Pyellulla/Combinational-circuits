module mux_test;
	reg a, b, sel;
	wire y;
	mux dut(.a(a),.b(b),.sel(sel),.y(y));
	initial begin 
		$dumpfile("test_mux.vcd");
		$dumpvars(0,mux_test);
		$display("This is a multiplexer");
		$monitor("a=%b,b=%b,sel=%b,y=%b",a,b,sel,y);
		a=0;b=0;sel=0;#5;
		a=0;b=1;sel=0;#5;
		a=1;b=0;sel=0;#5;
		a=1;b=1;sel=0;#5;
		a=0;b=0;sel=1;#5;
		a=0;b=1;sel=1;#5;
		a=1;b=0;sel=1;#5;
		a=1;b=1;sel=1;#5;
		$finish;
	end
endmodule
