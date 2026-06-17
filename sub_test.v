module sub_test;
	reg a,b;
	wire c;
	sub dut(.a(a),.b(b),.diff(diff));
	initial begin 
		$dumpfile("test_sub.vcd");
		$dumpvars(0,sub_test);
		$display("This is a basic subtractor");
		$monitor("a=%b,b=%b,diff=%b",a,b,diff);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule
