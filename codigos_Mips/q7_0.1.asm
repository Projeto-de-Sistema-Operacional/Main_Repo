.data
a: .word 0  
b: .word 0  

.text
.globl main
main:
    # lê o valor de 'a' do usuário e armazena em $t0
    li $v0, 5
    syscall
    move $t0, $v0

    # lê o valor de 'b' do usuário e armazena em $t1
    li $v0, 5
    syscall
    move $t1, $v0

    # compara 'a' com 'b'
    ble $t0, $t1, if


    sub $t0, $t0, $t1	#Se a for maior que b (a = a-b)
    j else

if:   
    add $t0, $t0, $t1	#Se a for menor ou igual b (a = a+b)

else:
    #Armazenando a e b
    sw $t0, a
    sw $t1, b

    #Imprimindo a
    lw $a0, a
    li $v0, 1
    syscall
    
    #Imprimindo b
    lw $a0, b
    li $v0, 1
    syscall
   

    # Terminando o programa
    li $v0, 10
    syscall
