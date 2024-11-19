; @author: Avinash Yadav
; @file-name: Lecture-09.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      MUL Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV AL, 14H       ; Load the hexadecimal value 14H into the AL register.
                  ; AL = 14H (which is 20 in decimal).

MOV BL, 24H       ; Load the hexadecimal value 24H into the BL register.
                  ; BL = 24H (which is 36 in decimal).

MUL BL            ; Multiply the value in BL (24H) with the value in AL (14H).
                  ; The result of the multiplication is stored in the AX register.
                  ; AX = AL * BL = 14H * 24H = 02D0H.
                  ; After this operation:
                  ;   - AL = D0H (lower 8 bits of the result)
                  ;   - AH = 02H (upper 8 bits of the result)
                  ; So, AX = 02D0H.

MOV AX, 1234H     ; Load the hexadecimal value 1234H into the AX register.
                  ; AX = 1234H.

MOV BX, 5678H     ; Load the hexadecimal value 5678H into the BX register.
                  ; BX = 5678H.

MUL BX            ; Multiply the value in BX (5678H) with the value in AX (1234H).
                  ; The result of the multiplication is stored in the DX:AX register pair.
                  ; The operation is: DX:AX = AX * BX = 1234H * 5678H = 06260060H.
                  ; After this operation:
                  ;   - AX = 0060H (lower 16 bits of the result)
                  ;   - DX = 0626H (upper 16 bits of the result)
                  ; So, DX:AX = 0626:0060H.

HLT               ; Halt the processor.
                  ; This instruction stops the execution of the program.
                  ; The processor will remain in a halted state until it is reset or interrupted.