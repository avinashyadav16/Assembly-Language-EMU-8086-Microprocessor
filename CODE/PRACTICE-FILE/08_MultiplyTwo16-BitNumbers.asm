.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DW 1234H               ; First 16-bit number
    NUM2 DW 0ABCH               ; Second 16-bit number
    RESULT_LOW DW ?             ; To store the low-order 16 bits of the result
    RESULT_HIGH DW ?            ; To store the high-order 16 bits of the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA           ; Initialize data segment
    MOV DS, AX              ; Move data segment address to DS
    MOV AX, NUM1            ; Load the first 16-bit number into AX
    MOV BX, NUM2            ; Load the second 16-bit number into BX
    MUL BX                  ; Multiply AX by BX, result in DX:AX
    MOV RESULT_LOW, AX      ; Store the low-order 16 bits of the result in RESULT_LOW
    MOV RESULT_HIGH, DX     ; Store the high-order 16 bits of the result in RESULT_HIGH
    MOV AH, 4CH             ; Set up to exit the program
    INT 21H                 ; Interrupt to terminate the program
MAIN ENDP
END MAIN
