module Decoder1x2 (
		input logic a,
		input logic en,
		output logic [1:0]y
);
		always @ (a or en)
			if(en)
				case(a)
					1'b0: y = 2'b01;
					1'b1: y = 2'b10;
				endcase
			else
					y = 2'b00;
endmodule
