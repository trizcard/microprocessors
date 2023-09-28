ORG 00h

inicio:
	MOV ACC, #10010011b ; move o valor 10010011b para o acumulador de forma imediata
	MOV B, #01101111b ; move o valor 01101111b para o registrador B de forma imediata

	ANL A, B ; faz a operação AND lógico entre o acumulador e o registrador B
	RR A ; faz a rotação para a direita no acumulador
	RR A ; faz a rotação para a direita no acumulador
	CPL A ; realiza a operação de complemento no acumulador

	RL A ; faz a rotação para a esquerda no acumulador
	RL A ; faz a rotação para a esquerda no acumulador

	ORL A, B ; faz a operação OR lógico entre o acumulador e o registrador B
	XRL A, B ; faz a operação XOR lógico entre o acumulador e o registrador B

	SWAP A ; faz a troca dos nibbles do acumulador
	JMP inicio ; faz o salto incondicional para o endereço inicio
	