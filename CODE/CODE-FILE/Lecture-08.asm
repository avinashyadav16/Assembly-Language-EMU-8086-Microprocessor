; @author: Avinash Yadav
; @file-name: Lecture-08.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      SBB Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV BX, 1234H      ; Load the hexadecimal value 1234H into the BX register.
                   ; BX is a 16-bit general-purpose register in the x86 architecture.
                   ; After this instruction, BX = 1234H.

MOV CX, 4122H      ; Load the hexadecimal value 4122H into the CX register.
                   ; CX is another 16-bit general-purpose register.
                   ; After this instruction, CX = 4122H.

SUB BX, CX         ; Subtract the value in the CX register (4122H) from the BX register (1234H).
                   ; BX = BX - CX.
                   ; 1234H - 4122H = D112H (in hexadecimal), 
                   ; and the carry flag (CF) will be set to 1, indicating a borrow.
                   ; because the result is negative (in two's complement, D112H represents a negative value).

SBB BX, 5624H      ; Subtract the hexadecimal value 5624H from BX (currently D112H), including the carry flag (CF).
                   ; and also subtract the carry flag (CF) from the result.
                   ; SBB stands for "Subtract with Borrow". If CF was set by the previous SUB operation, 
                   ; Since CF = 1 (borrow from the previous operation),
                   ; it subtracts an additional 1 from the result.
                   ; After this instruction,
                   ; BX = D112H - 5624H - CF (where CF = 1).
                   ; Calculating this:
                   ; D112H (hex) - 5624H (hex) - 1 (borrow) = 7AEDH (hex).
                   ; So, the final result in BX is 7AEDH.

HLT                ; Halt the processor.
                   ; This instruction stops the execution of the program.
                   ; The processor will remain in a halted state until it is reset or interrupted.