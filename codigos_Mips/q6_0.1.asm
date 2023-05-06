.data
    a: .word 4    
    b: .word 2    

.text
.globl main
main:
  
    lw $t0, a
    lw $t1, b

    # compara 'a' com 'b'
    ble $t0, $t1, if


    sub $t0, $t0, $t1	#Se a for maior que b (a = a-b)
    j else

if:   
    add $t0, $t0, $t1	#Se a for menor ou igual b (a = a+b)

else:
   

    # Terminando o programa
    li $v0, 10
    syscall
