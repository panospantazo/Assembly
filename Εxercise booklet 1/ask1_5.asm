.data

	Num: .byte 5

.text
.globl main
main:

li $v0 , 1
li $a0 , 5
syscall

li $v0 , 10
syscall