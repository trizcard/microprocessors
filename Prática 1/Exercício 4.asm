ORG 00h
JMP main
ORG 33h

main:
	CLR A ;limpa o acc
	MOV R0, #10010011b ;move o valor 10010011b para o registrador R0 de forma imediata


bloco1:
	JZ bloco2 ;se o acc for zero, pula para bloco2
	JNZ bloco3 ;se o acc for diferente de zero, pula para bloco3
	NOP ; para por 1 us

bloco2:
	MOV A, R0 ; move o valor do registrador R0 para o acc
	JMP bloco1 ; pula para bloco1

bloco3:
	DJNZ R0, bloco3 ;decrementa o valor do registrador R0 e pula para bloco3 se o valor for diferente de zero
	JMP main ;pula para main

end
