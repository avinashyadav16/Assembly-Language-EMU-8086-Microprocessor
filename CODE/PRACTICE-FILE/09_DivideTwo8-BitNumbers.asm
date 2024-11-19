.MODEL SMALL
.STACK 100H

.DATA
    DIVIDEND DB 24H         ; Dividend (numerator)
    DIVISOR DB 05H          ; Divisor (denominator)
    QUOTIENT DB ?           ; To store the quotient
    REMAINDER DB ?          ; To store the remainder

.CODE
MAIN PROC FAR
    MOV AX, @DATA       ; Initialize data segment
    MOV DS, AX          ; Move data segment address to DS
    MOV AL, DIVIDEND    ; Load the dividend into AL
    MOV BL, DIVISOR     ; Load the divisor into BL
    DIV BL              ; Divide AL by BL, result in AL (quotient), remainder in AH
    MOV QUOTIENT, AL    ; Store the quotient in memory
    MOV REMAINDER, AH   ; Store the remainder in memory
    MOV AH, 4CH         ; Terminate the program
    INT 21H             ; DOS interrupt to exit
MAIN ENDP
END MAIN
