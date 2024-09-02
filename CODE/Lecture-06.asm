; @author: Avinash Yadav
; @file-name: Lecture-06.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      DEC Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 567AH into the AX register.
MOV AX, 567AH  

; Decrement the value in the AX register by 1.
DEC AX         


; Halt the execution of the program (stop the CPU).
HLT            




; Detailed Explanation:

; - MOV AX, 567AH
;       - Operation: The MOV instruction transfers data from the source operand to the destination operand.
;       - Function: This line loads the hexadecimal value 567AH into the AX register.
;       - Registers Involved:
;               - AX: A 16-bit general-purpose accumulator register in the 8086 microprocessor.
;       - After Execution:
;               - The AX register contains the value 567AH.

; - DEC AX
;       - Operation: The DEC (decrement) instruction subtracts 1 from its operand.
;       - Function: This line decrements the value currently in the AX register by 1.
;       - Registers Involved:
;               - AX: The same accumulator register previously loaded with 567AH.
;       - After Execution:
;               - If AX initially held 567AH, after this instruction, it will contain 5679H.
;       - Flags Affected:
;               - Overflow Flag (OF): Set if the result causes a signed overflow.
;               - Sign Flag (SF), Zero Flag (ZF), Auxiliary Carry Flag (AF), Parity Flag (PF): These may also be affected based on the result.

; - HLT
;       - Operation: The HLT (halt) instruction stops the processor from executing further instructions.
;       - Function: This line halts the CPU's operation until the next external interrupt or a reset occurs.
;       - Effect:
;               - The CPU enters a halt state, effectively pausing program execution.
;               - This is typically used to signal the end of a program or to wait for an external event.