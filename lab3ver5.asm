	.text
	.globl main
main:
	li $v0,4
	la $a0,label1
	syscall
	
	li $v0,5
	syscall
	sw $v0,inti

	li $v0,4
	la $a0,label2
	syscall
	
	li $v0,5
	syscall
	sw $v0,intj
	
	la $a0,temp
	lw $t6,($a0)
	
	la $a0,inti
	lw $t1,($a0)
	div $t1,$t6
	mflo $t3
	
	la $a0,intj
	lw $t2,($a0)
	mul $t4,$t2,$t6
	
	add $t5 ,$t3,$t4
	sw $t5,res
	
	li $v0,4
	la $a0,label3
	syscall
	
	li $v0,1
	lw $a0,res
	syscall
	
.data 
label1:.asciiz "Enter a value of i:"
label2:.asciiz "Enter a value of j:"
label3:.asciiz "The result is :"
res:.word 0
inti: .word 0 
intj:.word 0
temp :.word 2
