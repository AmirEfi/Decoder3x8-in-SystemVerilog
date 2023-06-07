module Testbench();
	logic [2:0]a;
	logic en;
	logic [7:0]y;
	
	Decoder3x8 dec(a , en , y);
	
	initial begin
		// en = 0
		a = 3'b000; en = 0; #10;
		a = 3'b001; en = 0; #10;
		a = 3'b010; en = 0; #10;
		a = 3'b011; en = 0; #10;
		a = 3'b100; en = 0; #10;
		a = 3'b101; en = 0; #10;
		a = 3'b110; en = 0; #10;
		a = 3'b111; en = 0; #10;
		// en = 1
		a = 3'b000; en = 1; #10;
		a = 3'b001; en = 1; #10;
		a = 3'b010; en = 1; #10;
		a = 3'b011; en = 1; #10;
		a = 3'b100; en = 1; #10;
		a = 3'b101; en = 1; #10;
		a = 3'b110; en = 1; #10;
		a = 3'b111; en = 1; #10;
	end
endmodule
	