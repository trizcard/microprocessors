org 0000h

inicio:
	MOV A, #0Fh ; move o valor 0Fh para o acumulador de forma imediata (2 us)
	MOV A, #0h ; move o valor 0h para o acumulador de forma imediata (2 us)
	MOV R0, #13h ; move o valor 13h para o registrador R0 de forma imediata (1 us)
	MOV B, #13h ; move o valor 13h para o registrador B de forma imediata (2 us)

	MOV 51h, P1 ; move a porta P1 para a posição de memória 51h (2 us)

	SETB PSW.3 ; Banco 01 (1 us)
	MOV R0, 51h	; move de forma direta o valor 51h para o registrador R0 (2 us)

	MOV 52h, R0 ; move o valor do registrador R0 para a posição de memória 52h (2 us)

	MOV R1, #52h ; aponta para a posição de memória 52h (1 us)
	MOV A, @R1 ; move o valor de forma indireta para o acumulador (2 us)

	MOV DPTR, #9A5Bh ; move o valor 9A5Bh para o registrador DPTR de forma imediata (2 us)

	NOP ; consome um ciclo de clock (1 us)
	JMP $	; segura o programa nessa linha (2 us)

end
