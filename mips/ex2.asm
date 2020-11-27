# programa que printa o nome do usuario

.data
	mensagem1: .asciiz "Qual seu nome? "
	mensagem2: .asciiz "Ola, "
	nome: .space 32
	
.text
	# printa a mensagem 1:
	li $v0, 4
	la $a0, mensagem1
	syscall
	
	# le a entrada do usuario:
	li $v0, 8
	la $a0, nome
	la $a1, 32
	syscall
	
	# printa a mensagem 2:
	li $v0, 4
	la $a0, mensagem2
	syscall
	
	# printa o nome do usuario:
	li $v0, 4
	la $a0, nome
	syscall
	
