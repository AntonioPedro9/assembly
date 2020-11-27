# printa se um numero eh par ou impar

.data
	mensagem: .asciiz "Digite um numero: "
	saida1: .asciiz "O numero eh par"
	saida2: .asciiz "O numero eh impar"
	
.text
	# printa a mensagem:
	li $v0, 4
	la $a0, mensagem
	syscall
	
	# le a entrada do usu�rio:
	li $v0, 5
	syscall
	
	li $t0, 2    # salva o valor 2 em t0
	div $v0, $t0 # divide v0 por t0 e salva o quociente em "lo" e o resto em "hi"
	
	mfhi $t1     # salva o resto da divisao que esta no "hi" em t1
	
	# verifica o resto da divisao eh igual a zero ($zero), se sim pula para printa_par
	beq $t1, $zero, printa_par
	
	# se o resto nao for 0, executa o bloco abaixo
	li $v0, 4
	la $a0, saida2
	syscall
	
	# encerra o programa
	li $v0, 10
	syscall
	
	printa_par:
		li $v0, 4
		la $a0, saida1
		syscall
	
	