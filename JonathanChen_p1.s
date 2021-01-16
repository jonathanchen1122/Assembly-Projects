
.data 
	askSecond: .asciiz " \nEnter number of seconds: \n"

	hours: .asciiz " \n Hours: "
	days: .asciiz " \n Days: "
	weeks: .asciiz " \n Weeks: "
	
	line: .asciiz " \n"
.text
	
	main:
	# ask for number
	li $v0, 4
	la $a0, askSecond
	syscall

	# input value for second
	li $v0, 5
	syscall
	move $t0, $v0

	mul $t1, $t0, 3600 
	mul $t2, $t1, 24 
	mul $t3, $t2, 7 
	

	# hours
	li $v0, 4
	la $a0, hours
	syscall
	
	# print hours
	li $v0, 1
	move $a0, $t1
	syscall
	
	# days
	li $v0, 4
	la $a0, days
	syscall
	
	# print days
	li $v0, 1
	move $a0, $t2
	syscall
	
	#weeks
	li $v0, 4
	la $a0, weeks
	syscall
	
	# print hours
	li $v0, 1
	move $a0, $t3
	syscall
	
	# extra line 
	li $v0, 4
	la $a0, line
	syscall
	
	
	
	
