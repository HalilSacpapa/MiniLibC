BITS 64

global _strncmp:
section .text

_strncmp:
	xor rcx, rcx
	xor rax, rax
	xor r8, r8

_loop:
    mov al, BYTE [rcx + rdi]
	mov r8b, BYTE [rcx + rsi]

	cmp rcx, rdx
	je _exit_success

	cmp rax, 0
	je _exit_failure

	cmp r8, 0
	je _exit_failure

	cmp al, r8b
	jne _exit_failure

	inc rcx

	jmp _loop

_exit_success:
    mov rax, 0
    ret

_exit_failure:
	sub al, r8b
	movzx rax, al

	ret