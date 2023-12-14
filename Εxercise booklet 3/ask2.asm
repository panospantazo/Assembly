.data
userInput:  .space 15
space:      .asciiz " "

.text
.globl main

main:
    # Get user input
    li   $v0, 8
    la   $a0, userInput
    li   $a1, 15
    syscall

    # Count characters in the input string
    li   $t0, 0          # Initialize character count to zero
    la   $t1, userInput   # Load address of the input buffer
count_characters:
    lb   $t2, 0($t1)     # Load a byte from the buffer
    beq  $t2, $zero, reverse_string  # If the byte is null terminator, exit the loop
    addi $t0, $t0, 1      # Increment character count
    addi $t1, $t1, 1      # Move to the next character
    j    count_characters  # Repeat the loop

reverse_string:
    subi $t1, $t1, 1      # Move back to the last character because of the '\0'

print_character:
    lb   $t2, 0($t1)      # Load a byte from the buffer
    beq  $t2, $zero, exit_program  # If the byte is null terminator, exit the loop

    li   $v0, 11           # Print character
    move $a0, $t2
    syscall

    li   $v0, 4            # Print space
    la   $a0, space
    syscall

    subi $t1, $t1, 1       # Move to the previous character

    # Check if we have printed all characters
    j print_character
exit_program:
    # Exit the program
    li   $v0, 10
    syscall
