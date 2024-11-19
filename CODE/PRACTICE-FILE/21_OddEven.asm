.MODEL SMALL
.STACK 100H
.DATA
    MSG_ODD DB 'The number is odd.$'            ; Message for odd number
    MSG_EVEN DB 'The number is even.$'          ; Message for even number
    PROMPT DB 'Enter a single-digit number: $'  ; Prompt message

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H                ; Display prompt message
    
    MOV AH, 01H
    INT 21H                ; Read single character input
    SUB AL, '0'            ; Convert ASCII to integer

    MOV AH, AL             ; Copy input to AH
    AND AL, 1              ; Check if the number is odd or even
    JZ EVEN                ; If zero flag is set, jump to EVEN

    LEA DX, MSG_ODD
    MOV AH, 09H
    INT 21H                ; Display odd message
    JMP END_PROGRAM        ; Jump to end of program

EVEN:
    LEA DX, MSG_EVEN
    MOV AH, 09H
    INT 21H                ; Display even message

END_PROGRAM:
    MOV AH, 4CH
    INT 21H                ; Terminate program

MAIN ENDP
END MAIN
