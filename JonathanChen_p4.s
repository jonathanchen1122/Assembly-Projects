
.data 	


.text
	
	main:
	
	addi $s1, $0, 15
	
	addi $s2, $0, 12
	
	addi $s3, $0, 5

	# contstants
	li $t0, 0
	li $t1, 5
	li $t2, 10
	li $t3, 20
	
	# if s1 > 0, s2 > 10, s3 < 0
	ble $s1, $t0, exit
	ble $s2, $t2, exit
	bge $s3, $t0, exit
	
	addi $s4, $1, 1
	
	exit:

	li $v0, 1
	move $a0, $s4
	syscall
	
	#  if s2 > 10, s1 < 20, s3 == 5
	ble $s2, $t2, exitTwo
	bge $s1, $t3, exitTwo
	bne $s3, $t1, exitTwo
	
	add $s5, $s2, 1
	
	exitTwo:
	
	li $v0, 1
	move $a0, $s5
	syscall
	
