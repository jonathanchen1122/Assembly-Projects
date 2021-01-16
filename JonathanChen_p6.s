.data       
        numIs: .asciiz "Number is: "
        
        newLine: .asciiz "\n"
        
.text
	main:
	
	addi $a1, $zero, 5
	addi $a2, $zero, 10
	
	jal loopPrinter

	loopPrinter:
		# i = 0
		addi $s0, $zero, 0
		
		loop:
			bgt $s0, $a1, exit # jump to exit when s0 > 10
			
			jal printValue ### jump and link "printValue" function
			
			addi $s0, $s0, 1 # i = i + 1
			
			j loop # go back to loop
		
		exit:
		
		add $s0, $a1, 0
		jal printValue
		add $s0, $a1, 11 # s0 = '5' + 10 
		jal printValue
		
		li $v0, 10
		syscall
	
		jr $ra
	
	
	
	
	printValue:
	
	li $v0, 4
	la $a0, numIs
	syscall
	
	li $v0, 1
	add $a0, $s0, $zero
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	jr $ra
	
	
	
	
