module projeto3(Clock, Reset, a,b,c,d,e,f,g);
	input Clock, Reset;
	output a, b, c, d, e, f, g;
	wire [2:0] bit;
	
	ContadorSincrono(.Clock(Clock),.Reset(Reset),.S(bit));
	DecodificadorBCD(.Z(bit[0]),.Y(bit[1]),.X(bit[2]),.W(0),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
	
endmodule 