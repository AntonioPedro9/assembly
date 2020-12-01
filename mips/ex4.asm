# programa que te ajuda a advinhar um numero

.data
	mensagem: .asciiz "Digite um numero:\n"
	mensagem_maior: .asciiz "Eh um numero maior\n"
	mensagem_menor: .asciiz "Eh um numero menor\n"
	mensagem_acerto: .asciiz "Parabens vc acertou!\n"
	
.text
.globl main
	main:
		# printa a mensagem inicial:
		li $v0, 4
		la $a0, mensagem
		syscall
	
		# determina o numero a ser advinhado (80 nesse caso):
		add $a1, $zero, 80
	
	while:
		# pega a entrada do usuario e salva em t0:
		li $v0, 5
		syscall
		move $t0, $v0
		
		bgt $a1, $t0, numero_maior # se o numero sorteado for maior que t0 pula pra numero_maior
		blt $a1, $t0, numero_menor # se o numero sorteado for menor que t0 pula pra numero_menor
		beq $a1, $t0, fim_do_jogo  # se o numero sorteado for igual t0 pula pra fim_do_jogo
	
	numero_maior:
		li $v0, 4
		la $a0, mensagem_maior
		syscall
		
		j while # retorna ao loop
	
	numero_menor:
		li $v0, 4
		la $a0, mensagem_menor
		syscall
		
		j while # retorna ao loop
		
	fim_do_jogo:
		li $v0, 4
		la $a0, mensagem_acerto
		syscall
		
		# encerra o programa:
		li $v0, 10
		syscall
		
