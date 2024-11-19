.MODEL SMALL            
.STACK 100H             
.DATA                   
    message DB 'Hello, World!$' ; Original message with '$' terminator for display
    converted DB 20 DUP('$')    ; Space for the converted message, 20 characters max

.CODE                   ; Start of the code segment
MAIN PROC               ; Start of the main procedure

    ; Initialize data segment
    MOV AX, @DATA       ; Load the address of the data segment
    MOV DS, AX          ; Move it into DS to initialize data segment
    MOV ES, AX          ; Also initialize ES for storing converted message

    ; Convert each character
    LEA SI, message     ; Load the address of 'message' into SI
    LEA DI, converted   ; Load the address of 'converted' into DI

convert_loop:
    MOV AL, [SI]        ; Load the current character from message
    CMP AL, '$'         ; Check if we reached the end of the string
    JE display_message  ; If end of string, jump to display message

    ; Check if character is uppercase (A-Z)
    CMP AL, 'A'
    JL not_upper        ; If less than 'A', it's not uppercase
    CMP AL, 'Z'
    JG not_upper        ; If greater than 'Z', it's not uppercase
    ADD AL, 32          ; Convert uppercase to lowercase by adding 32
    JMP store_char      ; Jump to store the converted character

not_upper:
    ; Check if character is lowercase (a-z)
    CMP AL, 'a'
    JL store_char       ; If less than 'a', store as is
    CMP AL, 'z'
    JG store_char       ; If greater than 'z', store as is
    SUB AL, 32          ; Convert lowercase to uppercase by subtracting 32

store_char:
    MOV [DI], AL        ; Store the converted character
    INC SI              ; Move to the next character in message
    INC DI              ; Move to the next position in converted
    JMP convert_loop    ; Repeat the loop

display_message:
    ; Add '$' at the end of the converted string
    MOV BYTE PTR [DI], '$'  

    ; Display the converted string
    LEA DX, converted   ; Load the address of 'converted' into DX
    MOV AH, 9           ; DOS function 9 for printing a string terminated by '$'
    INT 21H             ; Call DOS interrupt 21h to print the string

    ; Exit the program
    MOV AH, 4CH         ; DOS function 4Ch for program termination
    INT 21H             ; Call DOS interrupt 21h to exit

MAIN ENDP               ; End of main procedure
END MAIN                ; End of program
