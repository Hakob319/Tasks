extern printf
section .data
    text db "The number is: %d", 10, 0

section .text
    global main
    

main:
    mov rdi, text
    mov rsi, 42
    xor eax, eax
    call printf
    ret
