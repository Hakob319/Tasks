extern printf
                                                                                                                                                            section .data                                                                                                                                                                                                                                                                                                           prompt_msg db  "Enter a two numbers:",10,0                                                                                                                  result_msg db "The mul is: %d",10,0
input_format db "%d",0

section .bss
num1 resd 1
num2 resd 1
mul resd 1
section .text

global main:

main:

lea rdi, [prompt_msg]
xor rax, rax
call scanf

lea rdi, [input_format]
lea rsi, [num1]
xor rax, rax
call scanf

lea rdi, [input_format]
lea rsi, [num2]
xor rax, rax
call scanf

mov eax, [num1]
mov eax, [num2]
mov [mul], eax

lea rdi, [result_msg]
mov eax, [mul]
mov esi, eax
xor eax, eax
call printf

mov eax, eax
ret                                                   
