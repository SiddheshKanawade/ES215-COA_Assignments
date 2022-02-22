addi $gp, $0, 200
		lw $s0, 0($gp) #max=A[0]
		add $s1, $0, $0 #max-index=0
		lw $s2, 0($gp) 	#min=A[0]
		add $s3, $0, $0 #min-index=0
		add $s4, $0, $0 #average=0
		add $t0, $0, $0 #i, for loop
		addi $t1, $0, 101 #n, size
for:	beq $t0, $t1, e
		sll $t4, $t0, 2 
		add $t5, $t4, $gp
		slt $t2, $s0, $t5
		bne $t2, $0, max
		j a
max:	lw $s0, $t5
		lw $s1, $t0	
a:		sgt $t3, $s2, $t5
		bne $t3, $0, min
		j plus
min:	lw $s2, $t5
		lw $s3, $t0
plus:	add $s4, $s4, $t5
		addi $t0, $t0, 1
		j for
e:		div $s4, $t1
		mflo $s4
		jr $ra
