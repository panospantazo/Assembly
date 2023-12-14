.data 
	myMessage: .asciiz "Dwse moy enan arithmo: "
	myMessage1: .asciiz "Non Zero"
	myMessage2: .asciiz "Zero"
.text
.globl main
main:

li $v0 , 4
la $a0 , myMessage
syscall

li $v0 , 5
syscall
move $t0 , $v0

beqz $t0 , TRUE

li $v0 , 4
la $a0 , myMessage1
syscall

j FALSE
TRUE:
li $v0 , 4
la $a0 , myMessage2
syscall
FALSE:

li $v0 , 10
syscall