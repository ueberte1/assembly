jl - JUMP if less
;1 comparison
; 2 conditional assesment
;3 branching
section .data
    value1 db 15
    value2 db 20
    
section .text

_start:
    mov al, [value1]
    mov bl, [value2]
    cmp al, bl
    jl  less
 
not_less:
    ;yourcode for value1 not less than value 2
    jmp done
less:
    ;your code for cade value1 is less than value2
    
done:
    mov rax, 60
    xor rdi, rdi
    syscall
    
