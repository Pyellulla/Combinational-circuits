module multiplier_8bit_tb;
	reg [7:0] a;
	reg [7:0] b;
	wire [15:0] product;
	multiplier_8bit uut (.a(a),.b(b),.product(product));
	initial begin
		$dumpfile("test_multiplier_8bit.vcd");
		$dumpvars(0,multiplier_8bit_tb);
		$display("This is a 4bit multiplier");
		$monitor("a=%b, b=%b, product=%b",a,b,product);
		//Test cases
		a=8'b00000011; b=8'b11101000; #10
		a=8'b00000000; b=8'b11001100; #10
		a=8'b01010010; b=8'b10101010; #10
		a=8'b11111000; b=8'b11010101; #10
		a=8'b11110101; b=8'b00101111; #10
		$finish;
	end
endmodule
