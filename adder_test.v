module adder_test;
	reg a,b;
	wire c;
	adder dut(.a(a),.b(b),.sum(sum));
	initial begin 
		$dumpfile("test_adder.vcd");
		$dumpvars(0,adder_test);
		$display("This is a basic adder");
		$monitor("a=%b,b=%b,sum=%b",a,b,sum);
		a=0;b=0;#5;
		a=0;b=1;#5;
		a=1;b=0;#5;
		a=1;b=1;#5;
		$finish;
	end 
endmodule


