.data
.text
main:
    li $t0, 4

    li $t1, 2
    div $t0, $t1
    mfhi $t2

    bne $t2, $zero, impar7

    addi $t0, $t0, 5
    j mostra7

impar7:
    addi $t0, $t0, 8

mostra7:
    li $v0, 1
    add $a0, $t0, $zero
    syscall

    li $v0, 10
    syscall