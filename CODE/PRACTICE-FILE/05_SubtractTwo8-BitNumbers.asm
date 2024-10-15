.MODEL SMALL
.STACK 100H

.DATA
NUM1 DB 5AH         ; First 8-bit number
NUM2 DB 2FH         ; Second 8-bit number
RESULT DB ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, NUM1    ; Load the first number into AL
    SUB AL, NUM2    ; Subtract the second number from AL
    MOV RESULT, AL  ; Store the result
    MOV AH, 4CH     ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
