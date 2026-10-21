.data
.text
main:
    li $t0, 10
    li $t1, 6
    li $t2, 4

    add $t3, $t0, $t1
    mul $t3, $t3, $t2

    li $t4, 2
    div $t3, $t4
    mflo $t5

    li $v0, 1
    add $a0, $t5, $zero
    syscall

    li $v0, 10
    syscall