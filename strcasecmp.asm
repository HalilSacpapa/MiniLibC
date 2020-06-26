        bits        64
        global      strcasecmp

        section     .text
strcasecmp:
        xor     r8,    r8
        xor     r9,    r9
        xor     rax,   rax

_cmp:
        cmp     [rdi], byte 0
        je      _diff

        mov     r9b, [rdi]
        cmp     [rsi], r9b
        jne     _check_case

        jmp     _next_value

_check_case:
        mov     r8b,   r9b
        sub     r8b, 32
        cmp     [rsi], r8b
        je      _next_value
        add     r8b, 64
        cmp     [rsi], r9b
        je      _next_value
        jmp     _diff

_next_value:
        inc     rdi
        inc     rsi
        jmp     _cmp

_diff:
        mov     r9b, [rdi]
        sub     r9b, [rsi]
        cmp     r9b, byte 0
        je      _done
        jg      _sup
        jl      _inf
_done:
        ret

_inf:
    mov rax, -1
    ret
_sup:
    mov rax, 1
    ret