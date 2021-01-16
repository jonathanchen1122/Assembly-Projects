
.data 	
	line: .asciiz " \n"
	
	
	inIf: .asciiz "inside if"
	
	inElseIf: .asciiz "inside elseif"
	
	inElse: .asciiz "inside else"
.text
	
	main:
	
	addi $s0, $0, 5
	
	addi $s1, $0, 17
	
	addi $s2, $0, 77
	
	# contstants for 10 and 0
	li $t0, 10
	li $t1, 0
	
	# if s0 is less than t0
	bge $s0, $t0, exit
	
	li $v0, 4
	la $a0, inIf
	syscall
	
	j out
	exit:
	
	ble $s2, $t1, in_if
	bge $s2, $t0, exitTwo
	
	in_if: 
	
	li $v0, 4
	la $a0, inElseIf
	syscall
	
	j out
	
	exitTwo:
	
	li $v0, 4
	la $a0, inElse
	syscall
	
	out:
	
	
	
