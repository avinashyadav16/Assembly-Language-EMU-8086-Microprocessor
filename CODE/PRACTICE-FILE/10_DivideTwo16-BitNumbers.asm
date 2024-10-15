.MODEL SMALL
.STACK 100H

.DATA
DIVIDEND DW 1234H       ; 16-bit Dividend (numerator)
DIVISOR DW 00ABH        ; 16-bit Divisor (denominator)
QUOTIENT DW ?           ; To store the quotient
REMAINDER DW ?          ; To store the remainder

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, DIVIDEND    ; Load the dividend into DX:AX
    MOV DX, 0           ; Clear DX since we are dealing with 16-bit division
    MOV BX, DIVISOR     ; Load the divisor into BX
    DIV BX              ; Divide DX:AX by BX
    MOV QUOTIENT, AX    ; Store the quotient
    MOV REMAINDER, DX   ; Store the remainder
    MOV AH, 4CH         ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
