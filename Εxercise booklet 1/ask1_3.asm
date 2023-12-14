.data

	#myCharacter: .asciiz "Hello"

.text
.globl main
main:

li $v0 , 11
li $a0 , "Hello"
syscall

li $v0 , 10
syscall