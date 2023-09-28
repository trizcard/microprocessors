ORG 00h

inicio:
	MOV ACC, #10010011b
	MOV B, #01101111b

	ANL A, B 
	RR A
	RR A
	CPL A 

	RL A
	RL A

	ORL A, B
	XRL A, B

	SWAP A
	JMP inicio
	