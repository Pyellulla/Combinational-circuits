module divider_test;
	reg [1:0] numerator;
	reg [1:0] denominator;
	wire [1:0] quotient;
	wire [1:0] remainder;
	divider dut(.numerator(numerator),.denominator(denominator),.quotient(quotient),.remainder(remainder));
	initial begin 
		$dumpfile("test_divider.vcd");
		$dumpvars(0,divider_test);
		$display("This is a 2bit divider");
		$monitor("numerator=%b, denominator=%b, quotient=%b, remainder=%b",numerator,denominator,quotient,remainder);
		numerator = 2'b00; denominator = 2'b01;#10;
		numerator = 2'b01; denominator = 2'b11;#10;
		numerator = 2'b10; denominator = 2'b10;#10;
		numerator = 2'b11; denominator = 2'b10;#10;
		numerator = 2'b01; denominator = 2'b01;#10;
		numerator = 2'b11; denominator = 2'b00;#10;
		numerator = 2'b00; denominator = 2'b01;#10;
		numerator = 2'b10; denominator = 2'b10;#10;
		$finish;
	end
endmodule


			
		
