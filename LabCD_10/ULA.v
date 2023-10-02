module ULA(A,B,SEL,bit);
	input [3:0] A, B;
	input [2:0] SEL;
	output reg [3:0] bit;

	always @(*)
		case({SEL[2], SEL[1], SEL[0]})
			3'b000: bit = A & B;
			3'b001: bit = A | B;
			3'b010: bit = A + B;
			3'b011: bit = A - B; 
			3'b100: bit = A * B;
			3'b101: bit = A / B;
			default: bit = 4'b1111;
		endcase

endmodule 