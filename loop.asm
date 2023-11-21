li $v0 , 0
li $v1 , 3
li $a0 , 1
li $a1 , 5
loop:
    add $v0 , $v0 , $v1
    addi $a0 , $a0 , 1
    bne $a1 , $a0 , loop 