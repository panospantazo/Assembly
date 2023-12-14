.data
    inputPrompt: .asciiz "Enter a string (up to 15 characters): "
    newLine: .asciiz "\n"
    buffer: .space 16  # Buffer to store the input string (15 characters + null terminator)

.text
.globl main

main:
    # Print input prompt
    li $v0, 4
    la $a0, inputPrompt
    syscall

    # Read input string
    li $v0, 8
    la $a0, buffer
    li $a1, 16  # Maximum number of characters to read (including null terminator)
    syscall

    # Count characters in the input string
    li $t0, 0          # Initialize character count to zero
    la $t1, buffer     # Load address of the input buffer
count_characters:
    lb $t2, 0($t1)     # Load a byte from the buffer
    beq $t2, $zero, print_count  # If the byte is null terminator, exit the loop
    addi $t0, $t0, 1    # Increment character count
    addi $t1, $t1, 1    # Move to the next character
    j count_characters  # Repeat the loop

print_count:
    # Print the character count
    subi $t0 , $t0 , 1
    li $v0, 1
    move $a0, $t0
    syscall

    # Print a newline
    li $v0, 4
    la $a0, newLine
    syscall

    # Exit the program
    li $v0, 10
    syscall
