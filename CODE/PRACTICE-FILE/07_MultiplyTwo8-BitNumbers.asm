.MODEL SMALL
.STACK 100H

.DATA
NUM1 DB 05H         ; First 8-bit number
NUM2 DB 03H         ; Second 8-bit number
RESULT DW ?         ; To store the 16-bit result

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, NUM1     ; Load the first number into AL
    MOV BL, NUM2     ; Load the second number into BL
    MUL BL           ; Multiply AL by BL
    MOV RESULT, AX   ; Store the result (AX) into RESULT
    MOV AH, 4CH      ; Exit the program
    INT 21H
MAIN ENDP
END MAIN