module MaquinaDeMealy(CLOCK,UD,RESET,a,b,c,d,e,f,g);
	input CLOCK,RESET;
	input [1:0] UD;
	output a,b,c,d,e,f,g;
	wire Clock;
	wire [3:0] bit;
	
	DivisorFreq_1s D0(.CLOCK(CLOCK),.clk(Clock));
	MaquinaDeEstado M0(.CLOCK(Clock),.UD(UD),.RESET(RESET),.s(bit));
	DecodificadorBCD DB0(.Z(bit[0]),.Y(bit[1]),.X(bit[2]),.W(bit[3]),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

endmodule 