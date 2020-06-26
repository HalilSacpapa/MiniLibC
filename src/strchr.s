BITS 64

global strchr:
section .text

strchr:
    xor rax, rax

_loop:
    cmp byte [rdi], sil
    je _exit_success

    cmp byte [rdi], 0
    je _exit_failure

    inc rdi

    jmp _loop

_exit_failure:
    mov rax, 0
    ret

_exit_success:
    mov rax, rdi
    ret