	.text
	.globl main

main:
	li $v0 ,4
	la $a0 ,label1
	syscall
	
	li $v0,5
	syscall
	
	la $a0 , newyear
	lw $t1, ($a0)
	
	sub $t0 , $t1,$v0
	sw $t0,untilnewyear
	
	li $v0 ,4
	la $a0 ,label2
	syscall
	li $v0 ,1
	lw $a0 ,untilnewyear
	syscall	
	
	li $v0,10
	syscall
	
	

	.data
label1:.asciiz "Enter current number of month:"
label2:.asciiz "Unitl New Yesr Left--"
newyear: .word 12
untilnewyear:.word 0
 