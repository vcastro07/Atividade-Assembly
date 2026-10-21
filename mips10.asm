.data
numeros: .word 0, 20, 26, 50, 51, 75, 76, 100, -1
m0: .asciiz "\nIntervalo 0-25: "
m1: .asciiz "\nIntervalo 26-50: "
m2: .asciiz "\nIntervalo 51-75: "
m3: .asciiz "\nIntervalo 76-100: "

.text
main:
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t3, 0

    la $t6, numeros

le11:
    lw $t4, 0($t6)
    addi $t6, $t6, 4

    slt $t5, $t4, $zero
    bne $t5, $zero, fim11

    slti $t5, $t4, 101
    beq $t5, $zero, le11

    slti $t5, $t4, 26
    bne $t5, $zero, faixa0

    slti $t5, $t4, 51
    bne $t5, $zero, faixa1

    slti $t5, $t4, 76
    bne $t5, $zero, faixa2

    addi $t3, $t3, 1
    j le11

faixa0:
    addi $t0, $t0, 1
    j le11

faixa1:
    addi $t1, $t1, 1
    j le11

faixa2:
    addi $t2, $t2, 1
    j le11

fim11:
    li $v0, 4
    la $a0, m0
    syscall
    li $v0, 1
    add $a0, $t0, $zero
    syscall

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

    li $v0, 4
    la $a0, m3
    syscall
    li $v0, 1
    add $a0, $t3, $zero
    syscall

    li $v0, 10
    syscall