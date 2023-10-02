module ContadorSincrono(Clock, Reset, S);
	input Clock, Reset; 
	output reg [2:0] S;
	
	always @(negedge Clock)
		if(Reset)
			S <= 3'b000;
		else
			S <= S + 3'b001;
endmodule 