li $v0 , 4 
beq $v0 , $zero ltrue
j lfalse

ltrue:
     li $v0 , 20
     j lexit

lfalse:
      li $v0 , 30
      j lexit

lexit: