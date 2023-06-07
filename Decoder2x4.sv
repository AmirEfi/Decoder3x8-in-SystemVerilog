module Decoder2x4 (
	input logic [1:0]a,
	input logic en,
	output logic [3:0]y
);
	logic [1:0]temp;
	Decoder1x2 dec1 (a[1] , en, temp);
	Decoder1x2 dec2 (a[0] , temp[0] , y[1:0]);
	Decoder1x2 dec3 (a[0] , temp[1] , y[3:2]);
endmodule

