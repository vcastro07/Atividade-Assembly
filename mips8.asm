.data
.text
main:
    li $t0, 20
    li $t1, 4

    div $t0, $t1
    mflo $t2

    li $v0, 1
    add $a0, $t2, $zero
    syscall

    li $v0, 10
    syscall