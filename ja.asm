; JA - jump if Above
section .data
    value1 db 25
    value2 db 20

section .text
    global _start:
    
_start:
    mov al, [value1]
    mov bl, [value2]
    cmp al, bl
    ja above
    
not_above:
    ;your code here for the case value 1 is no above value 2
    jmp done
    
above:
    ;your code case is above
    
done:
    mov rax,    60
    xor rdi, rdi
    syscall
