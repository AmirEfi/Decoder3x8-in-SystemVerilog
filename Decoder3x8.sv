module Decoder3x8 (
		input logic [2:0]a,
		input logic en,
		output logic [7:0]y
);
		logic not_a2;
		not(not_a2,a[2]);
		
		logic en_dec1 , en_dec2;
		and(en_dec1, en , not_a2);
		and(en_dec2, en , a[2]);
		
		Decoder2x4 dec1 (a[1:0], en_dec1 ,y[3:0]);
		Decoder2x4 dec2 (a[1:0], en_dec2 ,y[7:4]);

endmodule
