;DOSSEG          ; Segment ordering for DOS, Tells the assembler to use the DOS segment addressing mode
.MODEL SMALL    ; Sets the memory model to "small"
.STACK 100H     ; Sets the size of the program stack to 256 bytes (100h in hexadecimal)
.DATA           ; Indicates the start of the data segment

.CODE           ; Indicates the start of the code segment
MAIN PROC       ; Starts the "main" procedure
    
    ; Read a character from the keyboard
    MOV AH, 1       ; Move the value 1 into the AH register (AH is used for input/output operations)
    INT 21H         ; Call the DOS interrupt 21h, which prints the character in the AL register (with ASCII code)
   
    ; Convert character to lowercase
    MOV DL, AL      ; Move the value in the AL register (which was set by the interrupt) 
                    ; into the DL register (which is used for input/output operations)
    ADD DL, 32      ; Add 32 to the value in the DL register (which converts an uppercase letter to lowercase in ASCII)
    
    ; Display the converted character
    MOV AH, 2       ; Move the value 2 into the AH register (which indicates the "print character" function)
    INT 21h         ; Call the DOS interrupt 21h, which prints the character in the DL register
                    ; (which is now the uppercase version of the character printed earlier)
    
    ; Exit the program
    MOV AH, 4CH     ; Move the value 4Ch into the AH register (which indicates the "terminate with return code" function)
    INT 21H         ; Call the DOS interrupt 21h, which terminates the program with the return code in the AL register

MAIN ENDP       ; Ends the "main" procedure
END MAIN        ; Indicates the end of the program