.data
.text
main:
    li $t0, -4

    slt $t1, $t0, $zero
    bne $t1, $zero, negativo8

    li $t2, 2
    mul $t3, $t0, $t2
    j mostra8

negativo8:
    li $t2, 3
    mul $t3, $t0, $t2

mostra8:
    li $v0, 1
    add $a0, $t3, $zero
    syscall

    li $v0, 10
    syscall