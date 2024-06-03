; JLE - JUMP IF LESS OR EQUAL
; COMPARISON
; CONDITIONAL CHECK
        ;ZERO FLAG IS SET TO 1
        ;SIGN FLAG AND OVERFLOW FLAG HAVE THE SAME VALUE(negative or equal)
; JUMP OR CONTINUE EXECUTION
section .data
    value1 db 15
    value2 db 15

section .text
    global _start:
   
_start:
    mov al, [value1]
    mov bl, [value2]
    cmp al, bl
    jle less_or_equal
    
not_less_or_equal:
    ; your code case 1 is not less or equal
    jmp done
less_or_equal:
    
done:
    mov rax, 60
    xor rdi, rdi
    syscall
