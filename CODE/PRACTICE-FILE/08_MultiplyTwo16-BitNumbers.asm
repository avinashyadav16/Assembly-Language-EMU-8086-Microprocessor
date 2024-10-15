.MODEL SMALL
.STACK 100H

.DATA
NUM1 DW 1234H               ; First 16-bit number
NUM2 DW 0ABCH               ; Second 16-bit number
RESULT_LOW DW ?             ; To store the low-order 16 bits of the result
RESULT_HIGH DW ?            ; To store the high-order 16 bits of the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, NUM1            ; Load the first 16-bit number into AX
    MOV BX, NUM2            ; Load the second 16-bit number into BX
    MUL BX                  ; Multiply AX by BX
    MOV RESULT_LOW, AX      ; Store the low-order 16 bits of the result
    MOV RESULT_HIGH, DX     ; Store the high-order 16 bits of the result
    MOV AH, 4CH             ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
