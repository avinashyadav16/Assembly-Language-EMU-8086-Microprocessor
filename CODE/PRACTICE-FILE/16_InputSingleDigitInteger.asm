.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 'Enter A Single Digit: $'   ; The prompt message to ask for a single digit
    NEWLINE DB 0DH, 0AH, '$'           ; Newline characters (carriage return, line feed)

.CODE
MAIN PROC FAR
    ; Step 1: Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Step 2: Display the prompt message
    LEA DX, MSG           ; Load address of the prompt string
    MOV AH, 09H           ; DOS function to display a string
    INT 21H               ; Display the string

    ; Step 3: Take single character input from user
    MOV AH, 01H           ; DOS function to take single character input
    INT 21H               ; Read user input (digit is stored in AL)

    ; Step 4: Convert ASCII input to integer (optional, can perform operations here)
    SUB AL, 30H           ; Convert ASCII to integer (digit)

    ; Step 5: Convert integer back to ASCII (for display)
    ADD AL, 30H           ; Convert back to ASCII

    ; Step 6: Display the entered digit
    MOV DL, AL            ; Move the entered digit to DL for output
    MOV AH, 02H           ; DOS function to display a single character
    INT 21H               ; Display the entered digit

    ; Step 7: Display a newline (optional)
    LEA DX, NEWLINE       ; Load the address of the newline string
    MOV AH, 09H           ; DOS function to display a string
    INT 21H               ; Display the newline

    ; Step 8: Exit the program
    MOV AH, 4CH           ; DOS function to terminate program
    INT 21H               ; Terminate program

MAIN ENDP
END MAIN