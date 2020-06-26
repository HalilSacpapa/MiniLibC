BITS 64

global _rindex:
section .text

_rindex:
    xor rax, rax

_strlen:
    cmp [rdi], byte 0
    je _loop

    inc rdi

    jmp _strlen

_loop:
    cmp sil, 0
    je _exit_success

    dec rdi

    cmp [rdi], sil
    je _exit_success

    cmp [rdi], byte 0
    je _exit_failure

    jmp _loop

_exit_failure:
    mov rax, 0
    ret

_exit_success:
    mov rax, rdi
    ret