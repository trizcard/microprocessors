ORG 00h
JMP main
ORG 33h

main:
	CLR A ;limpa o acc
	MOV R0, #10010011b


bloco1:
	JZ bloco2
	JNZ bloco3
	NOP

bloco2:
	MOV A, R0
	JMP bloco1

bloco3:
	DJNZ R0, bloco3
	JMP main

end
