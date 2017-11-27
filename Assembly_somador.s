#Assembly
.data
mensagemX:	.asciiz "Digite numero X:\n"
mensagemY:	.asciiz "Digite numero Y:\n"
mensagemR:	.asciiz "Soma dos numeros inteiros de X ate Y:\n"
		
	.text
	# imprime mensagem
main:	li $v0, 4 
	la $a0, mensagemX
	syscall

	# lê inteiro
	li $v0, 5 
	syscall 
			
	# grava numero X no registrador 0	
	add $s0, $v0, $zero #x = int.Parse(Console.ReadLine());

	# imprime mensagem
	li $v0, 4 
	la $a0, mensagemY
	syscall

	# lê inteiro
	li $v0, 5 
	syscall
			
	# grava numero Y no registrador 1	
	add $s1, $v0, $zero #y =  int.Parse(Console.ReadLine());

	
	# Atribui i = x	
	add $t0, $s0, $zero

	# Atribui comparador($t1) igual a zero
	add $t1, $zero, $zero

	#Atribui soma = 0;
	add $s2, $zero, $zero

For: sle $t1, $t0,$s1  #Seta '$t1' se '$t0' <= '$s1'
	beq $t1, $zero,F_FOR  # Se '$t1' == '$zero' pula  'F_FOR'

	add $s2, $t0, $s2 

	#i++
	addi $t0,$t0, 1
	j For

	# imprime mensagem
F_FOR:	li $v0, 4 
		la $a0, mensagemR
		syscall

		# imprime inteiro
		li $v0, 1
		move $a0, $s2
		syscall

		jr $ra