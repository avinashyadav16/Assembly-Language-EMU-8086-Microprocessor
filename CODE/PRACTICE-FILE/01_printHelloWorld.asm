.MODEL SMALL
.STACK 100H

.DATA
STRING DB 'Hello World', '$'  ; The string to be printed

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING            ; Load the address of the string
    MOV AH, 09H               ; Output the string
    INT 21H
    MOV AH, 4CH               ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
