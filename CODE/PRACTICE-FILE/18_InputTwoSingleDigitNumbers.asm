.MODEL SMALL
.STACK 100H

.DATA
    ; Define the two-digit number
    NUMBER DB 25H  ; 25H is the hexadecimal value, which is 37 in decimal

.CODE
MAIN PROC FAR
    ; Step 1: Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Step 2: Load the two-digit number into AX
    MOV AL, NUMBER   ; Load the two-digit number (25H) into AL
    MOV AH, 00H      ; Clear AH for the division operation

    ; Step 3: Prepare for division by 10 to extract the digits
    MOV BL, 0AH      ; Load BL with 10 (0AH) for division

    ; Step 4: Divide AX by BL to get the tens digit in AL and ones digit in AH
    DIV BL           ; AL = quotient (tens), AH = remainder (ones)

    ; Step 5: Convert the tens digit to ASCII
    ADD AL, 30H      ; Convert tens digit to ASCII ('0' = 30H)

    ; Step 6: Display the tens digit
    MOV DL, AL       ; Move tens ASCII value to DL for display
    MOV AH, 02H      ; DOS function to print a single character
    INT 21H          ; Call DOS interrupt to print the tens digit

    ; Step 8: Convert the ones digit to ASCII
    MOV AL, AH       ; Move the remainder (ones digit) to AL
    ADD AL, 30H      ; Convert ones digit to ASCII

    ; Step 9: Display the ones digit
    MOV DL, AL       ; Move ones ASCII value to DL for display
    MOV AH, 02H      ; DOS function to print a single character
    INT 21H          ; Call DOS interrupt to print the ones digit

    ; Step 11: Exit the program
    MOV AH, 4CH      ; DOS function to terminate program
    INT 21H          ; Exit the program

MAIN ENDP
END MAIN
