org 0000h

inicio:
	MOV A, #0Fh
	MOV A, #0h
	MOV R0, #13h
	MOV B, #13h

	MOV 51h, P1

	;banco 1
	MOV PSW, #00001000b
	MOV R0, 51h

	MOV 52h, R0

	MOV R1, #52h
	MOV A, @R1

	MOV DPTR, #9A5Bh

	NOP
	JMP $	

end
