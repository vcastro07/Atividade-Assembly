.data
.text
main:
    li $t0, 2
    li $t1, 3
    li $t2, 4

    li $t3, 10
    mul $t0, $t0, $t3

    li $t3, 12
    mul $t1, $t1, $t3

    li $t3, 15
    mul $t2, $t2, $t3

    add $t4, $t0, $t1
    add $t4, $t4, $t2

    li $v0, 1
    add $a0, $t4, $zero
    syscall

    li $v0, 10
    syscall