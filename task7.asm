extern printf
extern scanf

section .data
    ask_msg db "Enter a word: ", 0
    input_fmt db "%s", 0
    output_fmt db "Length: %d", 10, 0

section .bss
    user_input resb 100

section .text
    
    global main

main:
    lea rdi, [ask_msg]
    xor eax, eax
    call printf

    lea rdi, [input_fmt]
    lea rsi, [user_input]
    call scanf

    lea rsi, [user_input]
    xor rcx, rcx

count_loop:
    mov al, [rsi + rcx]
    test al, al
    je done
    inc rcx
    jmp count_loop

done:
    lea rdi, [output_fmt]
    mov rsi, rcx
    xor eax, eax
    call printf

    xor eax, eax
    ret
