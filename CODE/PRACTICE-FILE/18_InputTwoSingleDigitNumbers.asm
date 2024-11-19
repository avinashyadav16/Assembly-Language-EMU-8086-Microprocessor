.MODEL SMALL
.STACK 100H

.DATA
    ; Define the two-digit number in ASCII
    NUMBER DB '37'  ; '37' is the ASCII representation of the number 37

.CODE
MAIN PROC FAR
    ; Step 1: Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Step 2: Load the first digit into AL
    MOV AL, NUMBER   ; Load the first digit ('3') into AL

    ; Step 3: Display the first digit
    MOV DL, AL       ; Move first digit to DL for display
    MOV AH, 02H      ; DOS function to print a single character
    INT 21H          ; Call DOS interrupt to print the first digit

    ; Step 4: Load the second digit into AL
    MOV AL, NUMBER+1 ; Load the second digit ('7') into AL
    
    ; Step 5: Display the second digit
    MOV DL, AL       ; Move second digit to DL for display
    MOV AH, 02H      ; DOS function to print a single character
    INT 21H          ; Call DOS interrupt to print the second digit

    ; Step 6: Exit the program
    MOV AH, 4CH      ; DOS function to terminate program
    INT 21H          ; Exit the program

MAIN ENDP
END MAIN
