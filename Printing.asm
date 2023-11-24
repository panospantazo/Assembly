.data	
	myCharacter:    .asciiz "m"   # Define the character to print
	myString: .asciiz "Hello World" #Define the string to print
	myAge: .asciiz "My age is: "   
	myPI: .asciiz "PI = "
	age : .word 19
	PI: .float  3.14
	myDouble: .double 6.555
	zeroDouble: .double 0.0
.text
.globl main

main:
    # Print the character 'm'
    
    li $v0, 11          # System call code for printing a character
    lb $a0, myCharacter # Load the address of the character to print
    syscall            # Make the system call
    
    # Print a newline character
    li $v0, 11          # System call code for printing a character
    li $a0, 10          # ASCII code for newline
    syscall             # Make the system call
    
    # Print the string "Hello World"
    
    li $v0 , 4
    la $a0 , myString
    syscall
    
    # Print a newline character
    
    li $v0, 11          
    li $a0, 10          
    syscall     
    
    #Print the string "My age is: "
    
    li $v0 , 4
    la $a0 , myAge
    syscall
    
    #Print a integer 
    
    li $v0 , 1
    lw $a0 , age 
    syscall
    
    #Print a newline
    
    li $v0, 11          
    li $a0, 10          
    syscall    
    
    #Print the string "PI = "
    
    li $v0 , 4
    la $a0 , myPI
    syscall
    

    #Print a float 
    
    li   $v0 , 2
    lwc1 $f12 , PI
    syscall
    
    #Print a newline
    
    li $v0 , 11
    li $a0 , 10
    syscall
    
    #Print a double
    
    ldc1 , $f2 , myDouble
    ldc1 , $f0 , zeroDouble
    li , $v0 , 3
    add.d $f12 , $f2 , $f0
    syscall

    # Exit the program
    li $v0, 10          # System call code for exit
    syscall            # Make the system call
