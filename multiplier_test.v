module multiplier_test;
	reg [1:0] a;
	reg [1:0] b;
	wire [3:0] product;
	multiplier dut(.a(a),.b(b),.product(product));
	initial begin
		$dumpfile("test_multiplier.vcd");
		$dumpvars(0,multiplier_test);
		$display("This is a multiplier");
		$monitor("a=%b,b=%b,product=%b",a,b,product);
		a=2'b00;b=2'b10;
		#10;
		a=2'b11;b=2'b10;
		#10;
		a=2'b01;b=2'b10;
		#10;
		a=2'b01;b=2'b01;
		#10;
		a=2'b11;b=2'b01;
		#10;
		$finish;
	end 
endmodule
