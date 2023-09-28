# Relatório de Atividade

## Exercício 1

### Código Assembly:

```
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

end ´´´

### Respostas 
(a) Tempo gasto em cada linha de instrução e tempo total em μs:

* MOV A, #0Fh: (2 us)
* MOV A, #0h: (2 us)
* MOV R0, #13h: (1 us)
* MOV B, #13h: (2 us)
* MOV 51h, P1: (2 us)
* SETB PSW.3: (1 us)
* MOV R0, 51h: (2 us)
* MOV 52h, R0: (2 us)
* MOV R1, #52h: (1 us)
* MOV A, @R1: (2 us)
* MOV DPTR, #9A5Bh: (2 us)
* NOP: (1 us)
* JMP $: (2 us)

Tempo total: 20 us com excessão do JMP $ que não é contabilizado.

(b) Quantidade de ciclos de máquina:

Para calcular o número de ciclos de máquina, somamos os tempos de cada instrução e dividimos pelo tempo de cada ciclo de máquina, que é de 1 us.

Número de ciclos de máquina: 20 ciclos

(c) Movendo uma porta inteira de 8 registradores (por exemplo, "MOV A, P1") para um destino:

Quando você move uma porta inteira de 8 registradores para um destino, como "MOV 51h, P1," o valor 0xFF é colocado no destino. Isso ocorre porque as portas P1, P2, P3 e P4 são inicializadas com 1s lógicos (0xFF) quando o microcontrolador MCS-51 é reiniciado ou ligado. Isso é configurado dessa forma para garantir que as saídas das portas estejam em um estado conhecido após a inicialização.

(d) Valor no acumulador após mover R1 de forma indireta:

O valor que aparecerá no acumulador após a instrução "MOV A, @R1" é o valor armazenado na posição de memória apontada por R1, que é a posição de memória 52h. Portanto, o valor no acumulador será o conteúdo da posição de memória 52h, que era o que anteriormente estava em R0, portanto, FFh.

(e) Mover um valor de 4 dígitos para DPTR:

É possível mover um valor de 4 dígitos (16 bits) para DPTR porque o registrador DPTR é um registrador de 16 bits que pode armazenar endereços de memória de 16 bits. No simulador, você pode verificar as mudanças em DPTR e em registradores especiais, como PC (Program Counter) e PSW (Program Status Word), quando a operação é realizada. O maior valor que pode ser movido para DPTR em hexadecimal é 0xFFFF, que é o valor máximo que pode ser representado em 16 bits.

## Exercício 2

### Código Assembly:

```
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
´´´ 

### Resposta 

Quando você move o valor 4 para ACC e, em seguida, move o valor 3 para ACC, o bit menos significativo (LSB) do PSW (Program Status Word) muda de 1 para 0. Isso ocorre porque o bit menos significativo do PSW é o bit de paridade (P), que é definido como 1 quando o número de bits 1 no acumulador é ímpar e 0 quando é par. Quando você move o valor 4 (binário: 100) para ACC, há um número ímpar de bits 1 (apenas um bit 1). Quando você move o valor 3 (binário: 11) para ACC, há um número par de bits 1 (dois bits 1). Portanto, o bit de paridade muda de 1 para 0 para refletir essa mudança no número de bits 1 no acumulador.

## Exercício 3

### Código Assembly:

```
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
´´´

## Exercício 4

### Código Assembly:

```
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
´´´	