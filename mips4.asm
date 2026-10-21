.data
.text
main:
    li $t0, 3
    li $t1, 4

    mul $t2, $t0, $t0
    mul $t3, $t1, $t1
    add $t4, $t2, $t3

    li $t5, 0

raiz:
    mul $t6, $t5, $t5
    slt $t7, $t4, $t6
    bne $t7, $zero, fim5

    addi $t5, $t5, 1
    j raiz

fim5:
    addi $t5, $t5, -1

    li $v0, 1
    add $a0, $t5, $zero
    syscall

    li $v0, 10
    syscall