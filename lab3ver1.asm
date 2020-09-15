	.text
	.globl main

main:
	li $v0 ,4
	la $a0 ,label1
	syscall
	
	li $v0,5
	syscall
	
	
	la $a0 ,maxnumber
	lw $t1,($a0)
	sub $t0 ,$t1,$v0
	sw $t0 ,left
	
	li $v0,4
	la $a0,label2
	syscall
	
	li $v0,1
	lw $a0,left
	syscall
	
	li $v0 ,4
	la $a0 ,label3
	syscall
	
	li $v0,10
	syscall
	




.data
label1:.asciiz "In which course are you studying?"
label2:.asciiz "Until graduation left--"
label3: .asciiz "--Survive!"
left: .word 0
maxnumber: .word 4

