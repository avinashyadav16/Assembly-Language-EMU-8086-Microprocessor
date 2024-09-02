# CONDITIONAL JUMP Instruction 🎯

The `JCC` (Conditional Jump) instruction in assembly language transfers the execution to a specified label only if a specific condition, based on the status of the flags, is met.

## Format 📝

```assembly
JCC <label>
```

- `JCC`: The instruction where `CC` stands for a specific condition (e.g., Zero, Carry).
- `<label>`: The destination label where the program control is transferred if the condition is met.

## Types of Conditional Jumps 🚦

- `JZ` **(Jump if Zero)**: Jumps if the Zero flag (ZF) is set (i.e., ZF = 1).
- `JNZ` **(Jump if Not Zero)**: Jumps if the Zero flag (ZF) is clear (i.e., ZF = 0).
- `JC` **(Jump if Carry)**: Jumps if the Carry flag (CF) is set (i.e., CF = 1).
- `JNC` **(Jump if No Carry)**: Jumps if the Carry flag (CF) is clear (i.e., CF = 0).
- `JB / JNAE` **(Jump if Below/Not Above or Equal)**: Jumps if CF is set.
- `JBE / JNA` **(Jump if Below or Equal/Not Above)**: Jumps if CF is set or ZF is set.
- `JA / JNBE` **(Jump if Above/Not Below or Equal)**: Jumps if CF is clear and ZF is clear.

## Example of Conditional Jump 📌

In the example below, the execution jumps conditionally based on the Zero flag (ZF):

```assembly
MOV AX, 1234H  ; Load the value 1234H into AX.
MOV BX, 1234H  ; Load the value 1234H into BX.

XOR AX, BX     ; AX XOR BX will result in zero (AX = BX).

JZ ABC         ; Jump to label ABC if the Zero flag (ZF) is set.

MOV CX, 1234H  ; This instruction is skipped if ZF is set.
HLT            ; Halt the CPU.

ABC:
MOV DX, 1234H  ; If ZF was set, execution resumes here.
HLT            ; Halt the CPU.
```

### Explanation 🧠

- **Conditional Jump:**

  - The JZ ABC instruction checks the Zero flag (ZF). If ZF = 1 (i.e., the result of the XOR was zero), the program jumps to the label ABC.
  - If the jump occurs, the instruction MOV CX, 1234H is skipped.

- **Flags Dependency:**

  - Conditional jumps depend on the status of flags in the 8086 microprocessor, particularly the Zero flag (ZF), Carry flag (CF), and others.
  - These flags are set or cleared based on the results of arithmetic or logical operations, determining whether a jump will occur.

![Conditional Jump instruction](<./Assests/1Conditional Jump instruction.png>) <br>
![Conditional Jump instruction](<./Assests/2Conditional Jump instruction.png>) <br>
![Conditional Jump instruction](<./Assests/3Conditional Jump instruction.png>) <br>
![Conditional Jump instruction](<./Assests/4Conditional Jump instruction.png>) <br>
![Conditional Jump instruction](<./Assests/5Conditional Jump instruction.png>) <br>
![Conditional Jump instruction](<./Assests/6Conditional Jump instruction.png>) <br><br>

---

---

**`The Conditional Jump instruction is essential for creating decision-making structures and controlling the flow of execution based on specific conditions in assembly programming.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "Conditional Jump instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-19.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Conditional Jump with JZ  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose register.
MOV AX, 1234H

; Move the same hexadecimal value 1234H into the BX register.
; BX is another general-purpose register.
MOV BX, 1234H

; Step 2: Perform XOR Operation
; ------------------------------------------------------------
; Perform a bitwise XOR operation between AX and BX.
; XOR compares each bit of the two registers:
; - If the bits are the same, the result is 0.
; - If the bits are different, the result is 1.
;
; Since AX and BX hold the same value (1234H), the result of XOR will be 0.
; Therefore, AX will be set to 0000H, and the Zero Flag (ZF) will be set.
XOR AX, BX     ; The result will be zero (AX = 0000H), ZF = 1

; Step 3: Conditional Jump with JZ
; ------------------------------------------------------------
; The JZ (Jump if Zero) instruction checks the Zero Flag.
; If the Zero Flag is set (ZF = 1), it means the result of the previous operation was zero.
; If so, the program jumps to the label ABC.
; Otherwise, it continues with the next instruction (MOV CX, 1234H).
JZ ABC         ; Conditional jump if Zero Flag is set (ZF = 1)

; This instruction will be skipped if the jump occurs.
MOV CX, 1234H

; Halt the execution of the program.
HLT

; Step 4: Continue Execution from Label ABC
; ------------------------------------------------------------
ABC:
; If the jump occurred, execution continues here.

; Move the hexadecimal value 1234H into the DX register.
; DX is another general-purpose register.
MOV DX, 1234H

; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX, DX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - BX: Base register (16-bit).
;       - CX: Count register (16-bit).
;       - DX: Data register (16-bit).
;  - XOR: The XOR instruction performs a bitwise exclusive OR operation between two registers.
;  - JZ: The JZ (Jump if Zero) instruction checks the Zero Flag (ZF) and jumps to a specified label if ZF is set.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 1234H into AX and BX.
; 2. Performs a bitwise XOR between AX and BX, which results in zero.
; 3. The Zero Flag is set because the result is zero.
; 4. The JZ instruction checks the Zero Flag and jumps to label ABC if it's set.
; 5. If the jump occurs, the value 1234H is loaded into DX, and the program halts.
```
