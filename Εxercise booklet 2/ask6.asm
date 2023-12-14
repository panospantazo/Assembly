.data

	myMessage1: .asciiz "Dwste ton arithmo ton grammwn: "
	myMessage2: .asciiz "Posa asterakia thes se kathe grammi? "
	Star: .asciiz "*"
	NewLine: .asciiz "\n"

.text
.globl main
main:

li $v0 , 4
la $a0 , myMessage1
syscall

li $v0 , 5
syscall
move $t0 , $v0

li $v0 , 4
la $a0 , myMessage2
syscall

li $v0 , 5
syscall
move $t1 , $v0

LOOP:
	la $t3 , ($t1) 
	LOOP2:
		li $v0 , 4
		la $a0 , Star
		syscall
		subi $t3 , $t3 , 1
		bne $t3 , 0 , LOOP2
	
	li $v0 , 4
	la $a0 , NewLine
	syscall
	subi $t0 , $t0 , 1
	bne $t0 , 0 , LOOP


li $v0 , 10
syscall