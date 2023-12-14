.data
	x: .word 0
	a: .word 20
	b: .word 30
	c: .word 15
	NewLine: .asciiz "\n"
	
.text
.globl main
main:

lw $t0 , a
lw $t1 , b
lw $t2 , c


add $t0 , $t0 , $t1
addi $t2 , $t2 , 10 
sub $t4 , $t0 , $t2
sw $t4 , x

li $v0 , 10
syscall