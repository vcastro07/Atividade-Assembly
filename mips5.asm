.data
.text
main:
    li $t0, 5
    li $t1, 5

    bne $t0, $t1, multiplica

    add $t2, $t0, $t1
    j mostra6

multiplica:
    mul $t2, $t0, $t1

mostra6:
    li $v0, 1
    add $a0, $t2, $zero
    syscall

    li $v0, 10
    syscall