.data

	myMessage: .asciiz "Dwse to onomatepwnimo soy: "
	myMessage2: .asciiz "Geia soy re "
	userInput: .space 20

.text
.globl main
main:

li $v0 , 4
la $a0 , myMessage
syscall

li $v0 , 8
la $a0 , userInput
li $a1 , 20
syscall

li $v0 , 4
la $a0 , myMessage2
syscall

la $a0 , userInput
syscall

li $v0 , 10
syscall