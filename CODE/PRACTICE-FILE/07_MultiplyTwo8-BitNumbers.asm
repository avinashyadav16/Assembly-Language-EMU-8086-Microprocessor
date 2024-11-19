.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 05H         ; First 8-bit number
    NUM2 DB 03H         ; Second 8-bit number
    RESULT DW ?         ; To store the 16-bit result

.CODE
MAIN PROC FAR
    MOV AX, @DATA   ; Initialize data segment
    MOV DS, AX      ; Move data segment address to DS
    MOV AL, NUM1    ; Load the first number into AL
    MOV BL, NUM2    ; Load the second number into BL
    MUL BL          ; Multiply AL by BL, result in AX
    MOV RESULT, AX  ; Store the result (AX) into RESULT
    MOV AH, 4CH     ; DOS function to exit the program
    INT 21H         ; Interrupt to invoke DOS function
MAIN ENDP
END MAIN