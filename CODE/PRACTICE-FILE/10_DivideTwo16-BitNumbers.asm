.MODEL SMALL
.STACK 100H

.DATA
    DIVIDEND DW 1234H       ; 16-bit Dividend (numerator)
    DIVISOR DW 00ABH        ; 16-bit Divisor (denominator)
    QUOTIENT DW ?           ; To store the quotient
    REMAINDER DW ?          ; To store the remainder

.CODE
MAIN PROC FAR
    MOV AX, @DATA       ; Load the address of the data segment into AX
    MOV DS, AX          ; Initialize DS register with the data segment address
    MOV AX, DIVIDEND    ; Load the 16-bit dividend into AX
    MOV DX, 0           ; Clear DX to prepare DX:AX for division
    MOV BX, DIVISOR     ; Load the 16-bit divisor into BX
    DIV BX              ; Divide DX:AX by BX, store quotient in AX, remainder in DX
    MOV QUOTIENT, AX    ; Store the quotient
    MOV REMAINDER, DX   ; Store the remainder
    MOV AH, 4CH         ; Exit the program
    INT 21H
MAIN ENDP
END MAIN