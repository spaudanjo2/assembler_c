;nasm -f elf64 addit.asm -o addit.o
;gcc -std=c99 addit.c addit.o -o addit 
section .data
section .text

global addit
addit:	
		;STACK SAVE
		push rbp
		push rbx
		mov  rbp, rsp	;neuer Stackframe
		
		;CODE
		mov  rax, rdi	;param1 in rax	
		mov  rbx, rsi	;param2 in rbx
		add  rax, rbx	;additionsergebnis in rax
		
		;STACK RESTORE
		pop  rbx 
		pop  rbp
		ret 
