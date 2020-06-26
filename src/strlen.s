BITS 64

global strlen:
section .text

strlen:
    xor rax, rax

_loop:
    cmp [rdi], byte 0
    je _exit

    inc rdi
    inc rax

    jmp _loop

_exit:
    ret