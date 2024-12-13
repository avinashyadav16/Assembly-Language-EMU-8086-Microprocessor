.MODEL SMALL
.STACK 100H
.DATA
    NEWLINE DB 0DH, 0AH, '$'    ; New line to end the output

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX                ; Set up data segment

    MOV CX, 10                ; Loop counter for 10 numbers
    MOV AL, '9'               ; Start with ASCII '9'

PRINT_LOOP:
    MOV DL, AL                ; Load current number into DL
    MOV AH, 02H               ; DOS function to display character
    INT 21H                   ; Print character in DL

    DEC AL                    ; Move to the previous ASCII character
    LOOP PRINT_LOOP           ; Loop until CX reaches 0

    ; Move to a new line after printing
    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH               ; Exit program
    INT 21H

MAIN ENDP
END MAIN
