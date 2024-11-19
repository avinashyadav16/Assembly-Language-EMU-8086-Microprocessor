; Hello World program in assembly language for TASM

.model small
.stack 100h

.data
    hello_msg db 'Hello, World!$', 0

.code
main:
    mov ax, @data      ; Load data segment
    mov ds, ax         ; Set DS register

    lea dx, hello_msg  ; Load address of message into DX
    mov ah, 9          ; Function 9: Display string
    int 21h            ; Call DOS interrupt

    mov ah, 4Ch        ; Function 4Ch: Exit program
    int 21h            ; Call DOS interrupt

end main