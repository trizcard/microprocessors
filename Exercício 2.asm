ORG 00h

inicio:
	MOV ACC, #2
	MOV B, #3

	MOV 50h, #7

	ADD A, 50h

	SUBB A, #3
	INC B
	SUBB A, B
	MUL AB

	INC B
	INC B
	DIV AB

	MOV 51h, A
	MOV 52h, B
	
	JMP inicio