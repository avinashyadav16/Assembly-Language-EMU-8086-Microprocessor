.MODEL SMALL
.STACK 100H

.DATA
    MSG_EQUAL DB 'The numbers are equal.$'          ; Message for equal numbers
    MSG_NOTEQUAL DB 'The numbers are not equal.$'   ; Message for not equal numbers
    PROMPT1 DB 'Enter first single-digit number: $' ; Prompt for first number
    PROMPT2 DB 'Enter second single-digit number: $'; Prompt for second number

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX               ; Initialize data segment

    LEA DX, PROMPT1          ; Load address of PROMPT1
    MOV AH, 09H              ; Function to display string
    INT 21H                  ; Interrupt to display prompt

    MOV AH, 01H              ; Function to read character
    INT 21H                  ; Interrupt to read first number
    SUB AL, '0'              ; Convert ASCII to numeric value
    MOV BL, AL               ; Store first number in BL

    LEA DX, PROMPT2          ; Load address of PROMPT2
    MOV AH, 09H              ; Function to display string
    INT 21H                  ; Interrupt to display prompt
    
    MOV AH, 01H              ; Function to read character
    INT 21H                  ; Interrupt to read second number
    SUB AL, '0'              ; Convert ASCII to numeric value

    CMP BL, AL               ; Compare first and second numbers
    JNE NOT_EQUAL            ; Jump if not equal

    LEA DX, MSG_EQUAL        ; Load address of MSG_EQUAL
    MOV AH, 09H              ; Function to display string
    INT 21H                  ; Interrupt to display message
    JMP END_PROGRAM          ; Jump to end of program

NOT_EQUAL:
    LEA DX, MSG_NOTEQUAL     ; Load address of MSG_NOTEQUAL
    MOV AH, 09H              ; Function to display string
    INT 21H                  ; Interrupt to display message

END_PROGRAM:
    MOV AH, 4CH              ; Function to terminate program
    INT 21H                  ; Interrupt to terminate program

MAIN ENDP
END MAIN
