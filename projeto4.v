module projeto4(A,B,SEL,a,b,c,d,e,f,g,s);
	input [3:0] A, B;
	input [2:0] SEL;
	output a, b, c, d, e, f, g;
	output [3:0] s;

	ULA I0(.A(A),.B(B),.SEL(SEL),.bit(s)); 
	DecodificadorBCD(.Z(s[0]),.Y(s[1]),.X(s[2]),.W(s[3]),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

endmodule 