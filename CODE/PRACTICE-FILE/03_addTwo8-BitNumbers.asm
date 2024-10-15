.MODEL SMALL
.STACK 100H

.DATA
NUM1 DB 25H         ; First number
NUM2 DB 17H         ; Second number
RESULT DB ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, NUM1    ; Load first number into AL
    ADD AL, NUM2    ; Add second number to AL
    MOV RESULT, AL  ; Store the result
    MOV AH, 4CH     ; Exit the program
    INT 21H
MAIN ENDP
END MAIN
