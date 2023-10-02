module DecodificadorBCD(Z,Y,X,W,a,b,c,d,e,f,g);
	input wire Z,Y,X,W;
	output wire a,b,c,d,e,f,g;
	reg [6:0] display;
	
	always @(*)
	case({W,X,Y,Z})
		4'b0000: display = 7'b0000001;
		4'b0001: display = 7'b1001111;
		4'b0010: display = 7'b0010010;
		4'b0011: display = 7'b0000110;
		4'b0100: display = 7'b1001100;
		4'b0101: display = 7'b0100100;
		4'b0110: display = 7'b0100000;
		4'b0111: display = 7'b0001111;
		4'b1000: display = 7'b0000000;
		4'b1001: display = 7'b0001100;
		default: display = 7'b1111111;
	endcase
	assign {a,b,c,d,e,f,g} = display;

endmodule
	
