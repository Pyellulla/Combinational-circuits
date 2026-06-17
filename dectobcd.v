module dectobcd(
    input [3:0] decimal,  // Decimal digit input (0-9)
    input [3:0] bcd
);

    always @(*) begin 
        if (decimal >= 4'd0 && decimal <= 4'd9) begin
            bcd = decimal;
        end else begin
            bcd = 4'b0000; // Handles invalid states (10 to 15)
        end // This matches the always @(*) begin
    end 
    
endmodule
