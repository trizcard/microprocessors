ORG 00h

inicio:
	MOV ACC, #2 ; move o valor 2 para o acumulador de maneira imediata
	MOV B, #3 ; move o valor 3 para o registrador B de maneira imediata

	MOV 50h, #7 ; move o valor 7 para a posição de memória 50h de maneira imediata

	ADD A, 50h ; soma o valor da posição de memória 50h com o valor do acumulador

	SUBB A, #3 ; subtrai o valor 3 do acumulador
	INC B ; incrementa o valor do registrador B
	SUBB A, B ; subtrai o valor do registrador B do acumulador
	MUL AB ; multiplica o valor do acumulador com o valor do registrador B

	INC B ; incrementa o valor do registrador B
	INC B ; incrementa o valor do registrador B
	DIV AB ; divide o valor do acumulador pelo valor do registrador B

	MOV 51h, A ; move o valor do acumulador para a posição de memória 51h
	MOV 52h, B ; move o valor do registrador B para a posição de memória 52h
	
	JMP inicio ; volta para o início do programa