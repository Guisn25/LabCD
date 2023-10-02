module saida(R, UD, s);
	input [1:0] UD;
	input [3:0] R;
	output reg [3:0] s;
	
	parameter A = 4'b0111,B = 4'b1001,C = 4'b0000,D = 4'b0110,E = 4'b0100,
	F = 4'b0110,G = 4'b0101,H = 4'b0011,I = 4'b0010,Z = 4'b1111;
	
	always @(R)
		case(R)
		4'b0000:
			if(UD == 2'b00)
				s = A;
			else if(UD == 2'b01)
				s = I;
			else if(UD == 2'b10)
				s = B;
			else if(UD == 2'b11)
				s = Z;
		4'b0001:
			if(UD == 2'b00)
				s = B;
			else if(UD == 2'b01)
				s = A;
			else if(UD == 2'b10)
				s = C;
			else if(UD == 2'b11)
				s = Z;
		4'b0010:
			if(UD == 2'b00)
				s = C;
			else if(UD == 2'b01)
				s = B;
			else if(UD == 2'b10)
				s = D;
			else if(UD == 2'b11)
				s = Z;
		4'b0011:
			if(UD == 2'b00)
				s = D;
			else if(UD == 2'b01)
				s = C;
			else if(UD == 2'b10)
				s = E;
			else if(UD == 2'b11)
				s = Z;	
		4'b0100:
			if(UD == 2'b00)
				s = E;
			else if(UD == 2'b01)
				s = D;
			else if(UD == 2'b10)
				s = F;
			else if(UD == 2'b11)
				s = Z;
		4'b0101:
			if(UD == 2'b00)
				s = F;
			else if(UD == 2'b01)
				s = E;
			else if(UD == 2'b10)
				s = G;
			else if(UD == 2'b11)
				s = Z;
		4'b0110:
			if(UD == 2'b00)
				s = G;
			else if(UD == 2'b01)
				s = F;
			else if(UD == 2'b10)
				s = H;
			else if(UD == 2'b11)
				s = Z;
		4'b0111:
			if(UD == 2'b00)
				s = H;
			else if(UD == 2'b01)
				s = G;
			else if(UD == 2'b10)
				s = I;
			else if(UD == 2'b11)
				s = Z;
		4'b1000:
			if(UD == 2'b00)
				s = I;
			else if(UD == 2'b01)
				s = H;
			else if(UD == 2'b10)
				s = A;
			else if(UD == 2'b11)
				s = Z;
		4'b1001:
			if(UD == 2'b00)
				s = Z;
			else if(UD == 2'b01)
				s = I;
			else if(UD == 2'b10)
				s = B;
			else if(UD == 2'b11)
				s = Z;			
		endcase
endmodule 