%include "io64.inc"

section .text
global CMAIN
CMAIN:
        
 
    mov rbp, rsp; for correct debugging
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x00
    

    mov al, [a]
          
    mov [a], byte 0x55
    
    xor rax, rax
    ret
    
    ; 초기화 된 데이터 
    ; 변수이름 크기 초기값
    ; 크기 : db (define 1byte), dw(2), dd(4), dq(8) 
section .data
    a db 0x11  ; 참고 : 0x = 16진수 이므로 한자리당 4bit 두자리이면 8bit = 1 byte 이므로 크기를 db (1byte)로 하였다. 
    b dw 0x2222
    c dd 0x33333333
    d dq 0x4444444444444444  
    
    
    ; 초기화 되지 않은 데이터 
    ; 변수이름 크기 개수 
    ; 크기 resb(1) resw(2) resd(4) resq(8)
section .bss
    e resb 10
    
    