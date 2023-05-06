.data
	# Vetor 'dados' de bytes
	dados: .byte 72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33, 10
	b: .word 3
    	c: .word 5
    	d: .word 10
    	e: .word 5
    	a: .word 0
    	
.text	#O que ocorre nessa questão é que o programa inicia pela função "func" e só depois vai para a função main. 
	#Caso func tenha a finalização do programa main nunca será executada.
	#Caso func não tenha finalização do programa ocorrerá um loop infinito. Ja que antes da finalização de main ocorre outra chamada para func.
	#Em relação aos valores dos registradores eles permanecem iguais até que seja passado um novo valor para ele
func:
    lw $s0, b    # $s0 = b
    lw $s1, c    # $s1 = c
    lw $s2, d    # $s2 = d
    lw $s3, e    # $s3 = e

    add $s0, $s0, $s1    # $s0 = b + c
    sub $s2, $s2, $s3    # $s2 = d - e
    sub $s0, $s0, $s2    # $s0 = (b + c) - (d - e)

    li $v0, 1       
    move $a0, $s0    # carrega o valor de $s0 em $a0
    syscall          # imprime o valor de a
    
    

.globl main #deve ser global
	main:
	la $a0, dados

	#imprimir string
	li $v0, 4
	syscall
	
	jal func

	# Terminando o programa
	li   $v0, 10
	syscall
