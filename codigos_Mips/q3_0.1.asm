.data
    b: .word 3
    c: .word 5
    d: .word 10
    e: .word 5
    a: .word 0

.text
.globl main
main:
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

    # Terminando o programa
    li $v0, 10
    syscall
