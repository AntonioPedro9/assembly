# hello world

.data
	mensagem: .asciiz "Hello world!" # aloca memoria para a string

.text
	li $v0, 4       # configura o syscall para printar uma string
	la $a0, mensagem # acessa o endereco da mensagem
	syscall         # chama a funcao de v0
	
	# encerra o programa:
	li $v0, 10
	syscall
