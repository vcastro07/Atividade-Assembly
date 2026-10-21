.data
.text
main:
    li $t0, 17
    li $t1, 5

    slt $t2, $t0, $t1
    beq $t2, $zero, ordem10

    add $t3, $t0, $zero
    add $t0, $t1, $zero
    add $t1, $t3, $zero

ordem10:
    beq $t1, $zero, fim10

    div $t0, $t1
    mflo $t2

    mul $t3, $t2, $t1
    sub $t4, $t0, $t3

    li $v0, 1
    add $a0, $t4, $zero
    syscall

fim10:
    li $v0, 10
    syscall