.MODEL SMALL
.STACK 100H
.DATA
    NEWLINE DB 0DH, 0AH, '$'   ; New line to end the output

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX               ; Set up data segment

    MOV CX, 26               ; Loop counter for 26 letters
    MOV AL, 'Z'              ; Start with ASCII 'Z'

PRINT_LOOP:
    MOV DL, AL               ; Load current letter character to DL
    MOV AH, 02H              ; DOS function to display character
    INT 21H                  ; Print character in DL

    DEC AL                   ; Move to previous letter ('Y', 'X', etc.)
    LOOP PRINT_LOOP          ; Loop until CX reaches 0

    ; Move to a new line after printing
    LEA DX, NEWLINE
    MOV AH, 09H              ; DOS function to display string
    INT 21H

    MOV AH, 4CH              ; DOS function to exit program
    INT 21H

MAIN ENDP
END MAIN
