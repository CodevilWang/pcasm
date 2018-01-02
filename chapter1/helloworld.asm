%define SYSCALL_WRITE 0x2000004
%define SYSCALL_EXIT  0x2000001
section .text  
        global start;  
    start:  
        mov rdi, 1 
        mov rsi, string 
        mov rdx, length 
        mov rax, SYSCALL_WRITE
        syscall

        mov rax, SYSCALL_EXIT
        mov rdi, 0
        syscall
          
    section .data
        string: db 'hello world',0Ah  
        length: equ 13  
          
    section .bss  
        var:resb 1
