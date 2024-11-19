.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 'Enter the first single digit: $'               ; Prompt for first digit
    MSG2 DB 0DH, 0AH, 'Enter the second single digit: $'    ; Prompt for second digit
    NEWLINE DB 0DH, 0AH, '$'                                ; Newline for formatting output

.CODE
MAIN PROC FAR
    ; Step 1: Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Step 2: Display the prompt for first digit
    LEA DX, MSG1           ; Load address of the first prompt message
    MOV AH, 09H            ; DOS function to display a string
    INT 21H                ; Display the prompt message

    ; Step 3: Get the first single digit input
    MOV AH, 01H            ; DOS function to take single character input
    INT 21H                ; Read user input (digit is stored in AL)
    SUB AL, 30H            ; Convert ASCII to integer
    MOV BL, AL             ; Store the first digit in BL

    ; Step 4: Display the prompt for second digit
    LEA DX, MSG2           ; Load address of the second prompt message
    MOV AH, 09H            ; DOS function to display a string
    INT 21H                ; Display the second prompt message

    ; Step 5: Get the second single digit input
    MOV AH, 01H            ; DOS function to take single character input
    INT 21H                ; Read user input (digit is stored in AL)
    SUB AL, 30H            ; Convert ASCII to integer

    ; Step 6: Subtract the second digit from the first
    SUB BL, AL             ; Subtract the second digit from the first

    ; Step 7: Convert the result back to ASCII
    ADD BL, 30H            ; Convert result to ASCII

    ; Step 8: Display the result
    MOV DL, BL             ; Move the result to DL for display
    MOV AH, 02H            ; DOS function to display a single character
    INT 21H                ; Display the result

    ; Step 9: Exit the program
    MOV AH, 4CH            ; DOS function to terminate program
    INT 21H                ; Terminate program

MAIN ENDP
END MAIN
