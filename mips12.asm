.data
alturas: .word 170, 165, 180, 172, 160, 175, 168, 190, 155, 178, 169, 182, 163, 174, 166
m1: .asciiz "Menor altura: "
m2: .asciiz "\nMaior altura: "

.text
main:
    la $t6, alturas
    lw $t0, 0($t6)

    add $t1, $t0, $zero
    add $t2, $t0, $zero

    addi $t6, $t6, 4
    li $t3, 14

le12:
    lw $t4, 0($t6)
    addi $t6, $t6, 4

    slt $t5, $t4, $t1
    beq $t5, $zero, verifica_max
    add $t1, $t4, $zero

verifica_max:
    slt $t5, $t2, $t4
    beq $t5, $zero, continua
    add $t2, $t4, $zero

continua:
    addi $t3, $t3, -1
    bne $t3, $zero, le12

    li $v0, 4
    la $a0, m1
    syscall

    li $v0, 1
    add $a0, $t1, $zero
    syscall

    li $v0, 4
    la $a0, m2
    syscall

    li $v0, 1
    add $a0, $t2, $zero
    syscall

    li $v0, 10
    syscall