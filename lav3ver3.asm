	.text 
	.globl main
main:

	li $v0 ,4
	la $a0 , label1
	syscall
	
	li $v0,5
	syscall
	sw $v0,intb
	
	li $v0 ,4
	la $a0 , label2
	syscall
	
	li $v0 ,5
	syscall
	sw $v0,intc
	
	la $a0,intb
	lw $t1,($a0)
	la $a0,intc
	lw $t2,($a0)
	
	mul $t0,$t1,$t2
	addi $t3,$t0,10
	sw $t3,y
	
	li $v0 ,4
	la $a0 , label3
	syscall
	
	li $v0 ,1
	lw $a0 , y
	syscall

	.data
label1:.asciiz "Enter a value of b:"
label2:.asciiz "Enter a value of c:"
label3:.asciiz "The result is :"
y:.word 0
intb: .word 0 
intc:.word 0