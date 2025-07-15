extern printf

section .data

text db "Hello World",10,0

section.text

global main:

main:

push ebp

mov ebp, esp

mov rdi, text

mov eax, 0

call printf 

mov esp, ebp

pop ebp 

ret
