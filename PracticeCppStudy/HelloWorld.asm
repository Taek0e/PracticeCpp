%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    Push 1
    Push 2
    call MAX
    
    xor rax, rax
    ret
        
        
MAX: 
    Push rbp
    mov rbp, rsp
    
    mov rax, [rbp+16]
    mov rbx, [rbp+24]
    cmp rax, rbx
    jg L1
    mov rax, rbx
    
L1: 
    Pop rbp
    ret
    

    