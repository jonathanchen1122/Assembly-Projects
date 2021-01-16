
.data 
	askWeight: .asciiz " \nPlease enter your weight: \n"

	askHieght: .asciiz " \nPlease enter your hieght in two parts: "
	askFeet: .asciiz " \n\tft: "
	askInches: .asciiz " \n\tinch: "
	
	ansBMI: .asciiz " \n\n Your BMI is: "
	
	line: .asciiz " \n"
.text
	
	main:
	# ask for weight
	li $v0, 4
	la $a0, askWeight
	syscall

		# input weight
	li $v0, 5
	syscall
	move $t0, $v0
	
	
	
	
	
	# ask for height
	li $v0, 4
	la $a0, askHieght
	syscall
	
	# ask feet
	li $v0, 4
	la $a0, askFeet
	syscall
	
		# input feet
	li $v0, 5
	syscall
	move $t1, $v0
	
	# ask inches
	li $v0, 4
	la $a0, askInches
	syscall
	
		# input inches
	li $v0, 5
	syscall
	move $t2, $v0
	
	
	mul $s1, $t1, 12	# convert feet to inches
	
	add $t3, $s1, $t2	# assign t3 as feet to Inches + inches
	
	mul $t4, $t3, $t3	# t4 = hieght^2	
	
	mul $s2, $t0, 703	# Weight * constant 703
	
	div $s3, $s2, $t4	# Weight * 703  /  hieght^2
	
	
	# answer
	li $v0, 4
	la $a0, ansBMI
	syscall
		
	# print out BMI
	li $v0, 1
	move $a0, $s3
	syscall
	
	# line
	li $v0, 4
	la $a0, line
	syscall
	
	
