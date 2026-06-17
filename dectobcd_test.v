module dectobcd_test;
	reg [3:0] decimal;
	wire [3:0] bcd;
	dectobcd dut(.decimal(decimal),.bcd(bcd));
	initial begin
		$dumpfile("test_dectobcd.vcd");
		$dumpvars(0,dectobcd_test);
		$display("This is a Decimal to BCD Converter");
		$monitor("decimal=%b,bcd=%b",decimal,bcd);
		decimal = 4'd0; #10;
		decimal = 4'd1; #10;
		decimal = 4'd5; #10;
		decimal = 4'd9; #10;
		decimal = 4'd10; #10;
		decimal = 4'd15; #10;
		$finish;
	end
endmodule

		
