#código assembly MIPS
main:
    
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    # Configurando os argumentos da função
    li $a0, 10
    li $a1, 5

    # Chamando a função 'diff'
    jal diff

    # Restaurando o registro $ra
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    # Encerrando o programa
    li $v0, 10
    syscall

# Definindo a função 'diff'
diff:
    sub $v0, $a0, $a1
    jr $ra
