# programa que printa a idade do usuario

.data
	mensagem1: .asciiz "Qual sua idade? "
	mensagem2: .asciiz "Sua idade eh "
	
.text
	li $v0, 4         # configura o syscall para printar uma string
	la $a0, mensagem1 # acessa o endereco da mensagem 1
	syscall           # chama a funcao de v0
	
	li $v0, 5         # configura o syscall para ler um inteiro
	syscall           # chama a funcao de v0
	
	move $t0, $v0     # salva o inteiro em t0
	
	li $v0, 4         # configura o syscall para ler printar string
	la $a0, mensagem2 # acessa o endereco da mensagem 2
	syscall           # chama a funcao de v0
	
	li $v0, 1         # configura o syscall para ler printar um inteiro
	move $a0, $t0     # salva o inteiro em a0
	syscall           # chama a funcao de v0
	
