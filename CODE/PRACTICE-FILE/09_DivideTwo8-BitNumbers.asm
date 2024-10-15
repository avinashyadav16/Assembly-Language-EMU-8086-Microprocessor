.MODEL SMALL
.STACK 100H

.DATA
DIVIDEND DB 24H         ; Dividend (numerator)
DIVISOR DB 05H          ; Divisor (denominator)
QUOTIENT DB ?           ; To store the quotient
REMAINDER DB ?          ; To store the remainder

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, DIVIDEND    ; Load the dividend into AL
    MOV BL, DIVISOR     ; Load the divisor into BL
    DIV BL              ; Divide AL by BL
    MOV QUOTIENT, AL    ; Store the quotient
    MOV REMAINDER, AH   ; Store the remainder
    MOV AH, 4CH         ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
