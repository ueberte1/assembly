section .data
    value1 db 30
    value2 db 30
section .text
    global main
    
main:
    mov al, byte [value1]
    mov bl, byte [value2]
    cmp al, bl
    jge greater_or_equal
  
not_greater_or_equal:
    ;code for not greater or equal
    jmp done
    
greater_or_equal:
    ;your code for greater or equal
    
done:
    mov rax, 60
    xor rdi, rdi
    syscall
    
