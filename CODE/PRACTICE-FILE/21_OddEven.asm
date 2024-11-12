.MODEL SMALL
.STACK 100H
.DATA
    MSG_ODD DB 'The number is odd.$'
    MSG_EVEN DB 'The number is even.$'
    PROMPT DB 'Enter a single-digit number: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H
    
    MOV AH, 01H
    INT 21H
    SUB AL, '0'  

    MOV AH, AL   
    AND AL, 1    
    JZ EVEN      

    LEA DX, MSG_ODD
    MOV AH, 09H
    INT 21H
    JMP END_PROGRAM

EVEN:
    LEA DX, MSG_EVEN
    MOV AH, 09H
    INT 21H

END_PROGRAM:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
