a:
lui $1,1
sw $1,0($0)
lw $3,0($0)
lw $4,0($0)
beq $3,$4,c
lui $1,1
lui $1,1
lui $1,1
c:
