.data
	# Vetor 'dados' de bytes
	dados: .byte 72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33, 10
.text
.globl main #deve ser global
	main:
	la $a0, dados

	#imprimir string
	li $v0, 4
	syscall

	# Terminando o programa
	li   $v0, 10
	syscall
