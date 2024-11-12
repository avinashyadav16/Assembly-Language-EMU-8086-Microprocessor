.MODEL SMALL
.STACK 100H

.DATA
    ; No data is needed for this program

.CODE
MAIN PROC FAR
    ; Step 1: Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Step 2: Take the first single-digit input from the user
    MOV AH, 01H       ; DOS interrupt to take a single character input
    INT 21H           ; Get first input from the user
    SUB AL, 30H       ; Convert ASCII to numeric value
    MOV BL, AL        ; Store the first input in BL

    ; Step 4: Take the second single-digit input from the user
    MOV AH, 01H       ; DOS interrupt to take a single character input
    INT 21H           ; Get second input from the user
    SUB AL, 30H       ; Convert ASCII to numeric value

    ; Step 5: Perform the addition
    ADD AL, BL        ; Add the two digits (first in BL, second in AL)

    ; Step 6: Convert the result back to ASCII
    ADD AL, 30H       ; Convert numeric result to ASCII

    ; Step 7: Display the result
    MOV DL, AL        ; Move result to DL for printing
    MOV AH, 02H       ; DOS interrupt to print a single character
    INT 21H           ; Display the result on the screen

    ; Step 8: Exit the program
    MOV AH, 4CH       ; DOS interrupt to terminate program
    INT 21H           ; Exit program

MAIN ENDP
END MAIN
