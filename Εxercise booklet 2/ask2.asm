.data
	myMessage: .asciiz "Give me a number: "
	myMessage1: .asciiz "Positive"
	myMessage2: .asciiz "Negative"
.text
.globl main
main:

li $v0 , 4
la $a0 , myMessage
syscall

li $v0 , 5
syscall
move $t0 , $v0

bgt $t0,0,TRUE
li $v0 , 4
la $a0 , myMessage2
syscall
j FALSE

TRUE:
li $v0 , 4
la $a0 , myMessage1
syscall

FALSE:



li $v0 , 10
syscall