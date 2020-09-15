	.text
	.globl main
main:

	li $v0,4
	la $a0 ,label1
	syscall
	
	li $v0,5
	syscall
	sw $v0 ,inti
	
	li $v0,4
	la $a0 ,label2
	syscall
	
	li $v0,5
	syscall
	sw $v0 ,intj
	
	la $a0,inti
	lw $t1,($a0)
	la $a0,intj
	lw $t2,($a0)
	div $t1,$t2
	mflo $t0
	sw $t0,g
	
	li $v0,4
	la $a0 ,label3
	syscall
	li $v0,1
	lw $a0,g
	syscall

	.data
label1:.asciiz "Enter a value of i:"
label2:.asciiz "Enter a value of j(j does not to be zero):"
label3:.asciiz "The result is :"
g:.word 0
inti: .word 0 
intj:.word 1