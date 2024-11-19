; @author: Avinash Yadav
; @file-name: Lecture-05.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      INC Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 5678H into the AX register.
MOV AX, 5678H  


; Increment the value in the AX register by 1.
INC AX         


; Halt the execution of the program (stop the CPU).
HLT            



; Detailed Explanation:
; - MOV AX, 5678H
;       - Operation: The MOV instruction copies data from the source operand to the destination operand.
;       - Function: This line moves (loads) the hexadecimal value 5678H into the AX register.
;       - Registers Involved:
;               - AX: A 16-bit general-purpose accumulator register in the 8086 microprocessor.
;       - After Execution:
;               - The AX register contains the value 5678H.

; - INC AX
;       - Operation: The INC (increment) instruction adds 1 to its operand.
;       - Function: This line increments the current value in the AX register by 1.
;       - Registers Involved:
;               - AX: The same accumulator register previously loaded with 5678H.
;       - After Execution:
;               - If AX initially held 5678H, after this instruction, it will contain 5679H.
;       - Flags Affected:
;               - Overflow Flag (OF): Set if the result causes a signed overflow.
;               - Sign Flag (SF), Zero Flag (ZF), Auxiliary Carry Flag (AF), Parity Flag (PF): These may also be affected based on the result.

; - HLT
;       - Operation: The HLT (halt) instruction stops the processor from executing further instructions.
;       - Function: This line halts the CPU's operation until the next external interrupt or a reset occurs.
;       - Effect:
;               - The CPU enters a halt state, effectively pausing program execution.
;               - This is typically used to signal the end of a program or to wait for an external event.