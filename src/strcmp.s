BITS 64

global strcmp:
section .text

strcmp:
	xor rcx, rcx
	xor r8, r8

_loop:
    mov al, BYTE [rcx + rdi]
	mov r8b, BYTE [rcx + rsi]

	cmp rax, 0
	je _exit

	cmp r8, 0
	je _exit

	cmp al, r8b
	jne _exit

	inc rcx

	jmp _loop

_exit:
	sub al, r8b
	movzx rax, al

	ret