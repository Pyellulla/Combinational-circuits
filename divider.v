module divider(
    input  [1:0] numerator,
    input  [1:0] denominator,
    output reg [1:0] quotient,
    output reg [1:0] remainder
);

    always @(*) begin 
        quotient  = 2'b00;
        remainder = 2'b00;

        if (denominator != 2'b00) begin
            quotient  = numerator / denominator;
            remainder = numerator % denominator;
        end
    end 
endmodule
