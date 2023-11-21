li $v0 , -2

bge $v0 , 0 True
	sub $v0 , $zero , $v0
True:
	addi $v0 , $v0 , 1