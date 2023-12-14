.data

	NewLine: .asciiz "\n"
	Star: .asciiz "* "	
.text
.globl main
main:

li $t0 , 0

LOOP:
	li $t1 , 0
	LOOP2:
		li $v0 , 4
		la $a0 , Star
		syscall
		addi $t1 , $t1 , 1
		bne $t1 4 LOOP2
	
	li $v0 , 4
	la $a0 , NewLine
	syscall
	addi $t0 , $t0 , 1
	bne $t0 , 5 , LOOP

li $v0 , 10
syscall
