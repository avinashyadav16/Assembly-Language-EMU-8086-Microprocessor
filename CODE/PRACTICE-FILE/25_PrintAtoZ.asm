.MODEL SMALL
.STACK 100H
.DATA
    NEWLINE DB 0DH, 0AH, '$'    ; New line to end the output

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX                ; Set up data segment

    MOV CX, 26                ; Loop counter for 26 letters
    MOV AL, 'A'               ; Start with ASCII 'A'

PRINT_LOOP:
    MOV DL, AL                ; Load current letter into DL
    MOV AH, 02H               ; DOS function to display character
    INT 21H                   ; Print character in DL

    INC AL                    ; Move to the next ASCII character
    LOOP PRINT_LOOP           ; Loop until CX reaches 0

    ; Move to a new line after printing
    LEA DX, NEWLINE           ; Load address of NEWLINE into DX
    MOV AH, 09H               ; DOS function to display string
    INT 21H                   ; Print string at address in DX

    MOV AH, 4CH               ; DOS function to terminate program
    INT 21H                   ; Exit program

MAIN ENDP
END MAIN
