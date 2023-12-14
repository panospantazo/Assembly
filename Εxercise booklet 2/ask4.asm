.data
	myMessage1: .asciiz "Poses fores thes na emfanisw ta asterakia? "
	myMessage: .asciiz "* "
.text

.globl main
main:

li $v0 , 4
la $a0 , myMessage1
syscall

li $v0 , 5
syscall
move $t0 , $v0

beq $t0 , 0 , NONE
LOOP:
	li $v0 , 4
	la $a0 , myMessage
	syscall
	
	subi $t0 , $t0 , 1
	bne $t0 , 0 , LOOP	
NONE:
li $v0 , 10
syscall
