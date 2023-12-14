.data

	myCharacter: .asciiz "a"
	NewLine: .asciiz "\n"
	myCharacter2: .asciiz "d"

.text
.globl main
main:

li $v0 , 4
la $a0 , myCharacter
syscall

li $v0 , 4
la $a0 , NewLine
syscall

li $v0 , 4
la $a0 , myCharacter2
syscall

li $v0 , 10
syscall