.data

	number1: .word 5
	number2:  .word 10
	number3: .word 2000
	myString2: .asciiz "="
	myString: .asciiz "With remainder:"

.text
.globl main
main:

	#ADDITION

	#Load words from table
	
	lw  $t1 , number1
	lw  $t2 , number2
	
	#Adding the two numbers 
	
	add $t3 , $t1 , $t2
	
	#Printing the first number
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall 
	
	#Printing the '+', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '+'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t2
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their adding value '15'
	
	li $v0 , 1
	add $a0 , $zero , $t3
	syscall
	
	#Putting a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	
	#SUBTRACTION
	
	
	#Subtracting the two numbers 
	
	sub $t4 , $t2 , $t1
	
	#Printing the first number
	
	li $v0 , 1
	add $a0 , $zero , $t2
	syscall 
	
	#Printing the '-', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '-'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their adding value '5'
	
	li $v0 , 1
	add $a0 , $zero , $t4
	syscall
	
	
	
	#Putting a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	
	#MULTIPLYCATION #1
	
	
	#Multiply the two numbers 
	
	mul $t5 , $t2 , $t1
	
	#Printing the first number
	
	li $v0 , 1
	add $a0 , $zero , $t2
	syscall 
	
	#Printing the '*', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '*'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their adding value '50'
	
	li $v0 , 1
	add $a0 , $zero , $t5
	syscall
	
	
	
	#Putting a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	
	
	
	#MULTIPLYCATION #2 BIGGER NUMBERS
	
	#load the number
	lw $s0 , number3
	
	#Multiply the two numbers 
	
	mult $s0 , $t2
	
	#load the nultiplycation value in a register
	
	mflo $t6

	
	#Printing the first number

	li $v0 , 1
	add $a0 , $zero , $s0
	syscall 
	
	#Printing the '*', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '*'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t2
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their adding value '20000'
	
	li $v0 , 1
	add $a0 , $zero , $t6
	syscall
	
	
	
	
	
	
	#Putting a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	
	
	
	#DIVISION #1 
	
	#Divide the two numbers
	
	div $t7 , $t2 , $t1

	
	#Printing the first number

	li $v0 , 1
	add $a0 , $zero , $t2
	syscall 
	
	#Printing the '*', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '/'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their adding value '2'
	
	li $v0 , 1
	add $a0 , $zero , $t7
	syscall
	
	
	
	#Putting a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	
	
	
	
	#DIVISION #2 div with 2 registers 
	
	addi $t0 , $zero , 13
	addi $t1 , $zero , 4
	
	
	#Divide the two numbers
	
	div $t0 , $t1

	#Load division value to s0
	
	mflo $s0 # Quotient 
	mfhi $s1 # Remainder
	
	#Printing the first number

	li $v0 , 1
	add $a0 , $zero , $t0
	syscall 
	
	#Printing the '*', I had problems putting it from a table so i put it staticly
	
	li $v0 , 11
	li $a0 , '/'
	syscall
	
	#Printing the second number
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall 
	
	#Printing the '='
	
	li $v0 , 4
	la $a0 , myString2
	syscall
	
	#Printing their Quotient '3'
	
	li $v0 , 1
	add $a0 , $zero , $s0
	syscall
	
	#Printing a new line
	
	li $v0 , 11
	li $a0 , 10
	syscall
	
	#Printing the string "The remainder is:
	
	li  $v0 , 4
	la $a0 , myString
	syscall 
	
	#Printing the renainder
	
	li $v0 , 1
	add $a0 , $zero , $s1
	syscall
	
	
	
	li $v0 , 10
	syscall
		
	