# UNCONDITIONAL JUMP Instruction 🚀

The `JMP` (Jump) instruction is an unconditional jump instruction in assembly language that transfers the execution to a specified label or memory address without any condition.

## Format 📝

```assembly
JMP <label>
```

- `JMP`: The instruction to jump to a specific label.
- `<label>`: The destination label where the program control is transferred.

## Example of Unconditional Jump 📌

In the example below, the execution jumps unconditionally to the label ABC, skipping the instruction that follows the jump.

```assembly
MOV AX, 1234H  ; Load the value 1234H into AX.
MOV BX, 3456H  ; Load the value 3456H into BX.

JMP ABC        ; Jump to label ABC, skipping the next instruction.

MOV CX, 3456H  ; This instruction is skipped.

ABC:
MOV DX, 5678H  ; Load the value 5678H into DX after the jump.

HLT            ; Halt the CPU.
```

### Explanation 🧠

- **Unconditional Jump:**

  - The `JMP ABC` instruction transfers control directly to the label `ABC`, skipping any intermediate code.
  - In this example, the instruction `MOV CX, 3456H` is never executed because the jump bypasses it.

- **Label:**
  - A label like `ABC` serves as a target for jump instructions and is followed by the code that should be executed after the jump.

---

![JMP instruction](<./Assests/1JMP instruction.png>) <br>
![JMP instruction](<./Assests/2JMP instruction.png>) <br>
![JMP instruction](<./Assests/3JMP instruction.png>) <br>
![JMP instruction](<./Assests/4JMP instruction.png>) <br><br>

---

---

**`The JMP instruction is a fundamental control flow mechanism in assembly language, allowing for branching and loop constructions by transferring control to different parts of the program unconditionally.`**

---

## Sample Code For Understanding: 🔥

Here’s a simple "JMP instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-18.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      Jump Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose register.
MOV AX, 1234H

; Move the hexadecimal value 3456H into the BX register.
; BX is another general-purpose register.
MOV BX, 3456H

; Step 2: Unconditional Jump to Label ABC
; ------------------------------------------------------------
; The JMP instruction causes an unconditional jump to the label ABC.
; This means the program counter will be set to the address of the label ABC,
; skipping the next instruction (MOV CX, 3456H) and continuing execution from ABC.
JMP ABC

; This instruction will be skipped because of the JMP above.
MOV CX, 3456H

; Step 3: Continue Execution from Label ABC
; ------------------------------------------------------------
ABC:
; After the jump, the execution continues here.

; Move the hexadecimal value 5678H into the DX register.
; DX is another general-purpose register.
MOV DX, 5678H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions,
; putting it in a halted state. The program execution ends here.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX, DX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - BX: Base register (16-bit).
;       - CX: Count register (16-bit), typically used in loop operations.
;       - DX: Data register (16-bit), often used for I/O operations.
;  - JMP: The JMP instruction causes an unconditional jump to a specified label or address.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 1234H into AX and 3456H into BX.
; 2. Jumps unconditionally to the label ABC, skipping the instruction to load 3456H into CX.
; 3. Loads 5678H into DX and halts the execution of the program.
```
