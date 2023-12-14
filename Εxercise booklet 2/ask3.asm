.data

	myMessage: .asciiz "* "
.text
.globl main
main:

li $t0 , 0
LOOP:
li $v0 , 4
la $a0 , myMessage
syscall

addi $t0 , $t0 , 1
bne $t0 , 5 , LOOP


li $v0 , 10
syscall