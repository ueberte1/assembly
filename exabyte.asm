;exabyte.asm
section .data
    bNum    db  123
    wNum    dw  12345
    warray  times   5   dw  0
    dNum    dd  12345
    dNum1   dq  12345
    text1   db  "abc",0
    qNum2   dq  3.14159265
    text2   db  "cde",0
    
section .bss
    bvar    resb    1
    dvar    resd    1
    wvar    resw    10
    qvar    resq    3
    
    
section .text
    global main
    
main:
    push    rbp         ; push the value of RBP onto the stack
    mov     rbp, rsp    ; Move the value of RSP int RBP
    lea     rax, [bNum] ; Load the memory adress of bNum into RAX
    mov     rax, bNum   ; load the value stored at bnum into rax
    mov     rax,[bNum]  ; Load the value stored at the memory address stored in bNum into RAX
    mov     [bvar], rax ; Store the value in rax at the memory address of Bvar
    lea     rax, [bvar] ; Load the memory address of BVAR INTO RAX
    lea     rax, [wNum] ; Load the memory addres of wNum into rax
    mov     rax, [wNum] ; Load the value stored in wNum into RAX
    lea     rax,[text1] ; Load rhe memory addres of TEXT1 into rax
    mov     rax,text1   ; Load the memory address of TEXT1 into rax
    mov     rax,text1+1 ;Load the value at the second character of Text1 INTO RAX
    lea     rax,[text1+1] ;Load the memory addres of TEXT1+1 into RAX
    mov     rsp, rbp      ; Restore the value of RSP from RBP (clean up the stack frame)
    pop     rbp           ; Pop the value of rbp from the stack
    ret                   ; Return from the function
