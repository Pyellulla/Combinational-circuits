module comp_test;
	reg [3:0] a;
	reg [3:0] b;
	wire y;
	comp dut(.a(a),.b(b),.y(y));
	initial begin
		$display("this is a basic 4bit comparator");
		$monitor("a=%b,b=%b,y=%b",a,b,y);
		a=4'b1100;b=4'b1111;#10;
		a=4'b1000;b=4'b0001;#10;
		$finish;
	end 
endmodule
