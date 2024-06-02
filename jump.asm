; jumping.asm - Exploring conditional jumps
extern printf ; declare the external function printf
section .data
    number1 dq 42 ; defining a variable number1
    number2 dq 41 ; defining a variable number2
    fmt1 db "NUMBER1 > = NUMBER2",10,0   ; format string dor comparison result
    fmt2 db "NUMBER1 < NUMBER2",10,0     ; format string for comparison
section .text
global main
main:
    push    rbp    ; save the base pointer
    mov     rbp, rsp  ;set the base pointer
    mov     rax, [number1] ; load the value of number1 into register RAX
    mov     rbx, [number2] ; load the value of number2 into register rbx
    cmp     rax, rbx       ; using CMP for cmparing the values in rax and rbx
    jge     greater        ; jump to 'greater' if rax >= rbx
    mov     rdi, fmt2      ; loading the format string for the secont message
    mov     rax, 0         ; clearing rax, no xmm register involved
    call    printf         ; call printf to display "NUMBER1 < NUMBER2"
    jmp     exit           ; jump to the exit table
greater:
    mov     rdi, fmt1      ; load the format string for the first message
    mov     rax,0          ; clear the  RAX again
    call    printf         ; call printf to display "NUMBER1 > = NUMBER2"
exit:
    mov     rsp, rbp       ; restoring the stack pointer
    pop     rbp            ; restoring the base pointer
    ret                    ; return from the main function
    
    
    
