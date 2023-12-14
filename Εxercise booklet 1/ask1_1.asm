.data

	myCharacter: .asciiz "a"

.text
.globl main
main:

li $v0 , 4
la $a0 , myCharacter
syscall

li $v0 , 10
syscall