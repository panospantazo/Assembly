li $v0 , 0
move $v1 , $v0
Loop:
    add $v0 , $v0 , $v1
    addi $v1 , $v1 , 1
    bne $v1 , 4 , Loop