module entradas(UD, ATUAL, prox);
	input [1:0] UD;
	input [3:0] ATUAL;
	output reg [3:0] prox;
	
	always @(ATUAL) begin
		case(UD)
		2'b00:
			prox = ATUAL;
		2'b01:
			if(ATUAL != 4'b0000 && ATUAL != 4'b1001)
				prox = ATUAL - 1;
			else
				prox = 4'b1000;
		2'b10:
			if(ATUAL != 4'b1000 && ATUAL != 4'b1001)
					prox = ATUAL + 1;
			else
				prox = 4'b0000;
		2'b11:
			prox = 4'b1001;
		
		endcase
	end
endmodule 