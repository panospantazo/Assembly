.data
	myMessage: .asciiz "Dwse moy mia lexh: "
	myMessage1: .asciiz "Dwse moy pio gramma thes na soy emfanisw: "
	NewLine: .asciiz "\n"
	userWord: .space 20
.text
.globl main
main:

li $v0 , 4
la $a0 , myMessage
syscall

li $v0 , 8
la $a0 , userWord
li $a1 , 20 
syscall
move $t1 , $a0

li $v0 , 4
la $a0 , NewLine
syscall

li $v0 , 4
la $a0 , myMessage1
syscall

li $v0 , 5
syscall 
move $t0 , $v0

add $t1 , $t1 , $t0
sub $t1 , $t1 , 1

li $v0 , 11
lb $a0 , ($t1)
syscall

li $v0 , 10
syscall