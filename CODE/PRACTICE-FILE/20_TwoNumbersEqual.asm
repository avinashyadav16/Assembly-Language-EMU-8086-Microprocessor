.MODEL SMALL
.STACK 100H
.DATA
    MSG_EQUAL DB 'The numbers are equal.$'
    MSG_NOTEQUAL DB 'The numbers are not equal.$'
    PROMPT1 DB 'Enter first single-digit number: $'
    PROMPT2 DB 'Enter second single-digit number: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT1
    MOV AH, 09H
    INT 21H
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    LEA DX, PROMPT2
    MOV AH, 09H
    INT 21H
    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    CMP BL, AL
    JNE NOT_EQUAL

    LEA DX, MSG_EQUAL
    MOV AH, 09H
    INT 21H
    JMP END_PROGRAM

NOT_EQUAL:
    LEA DX, MSG_NOTEQUAL
    MOV AH, 09H
    INT 21H

END_PROGRAM:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
