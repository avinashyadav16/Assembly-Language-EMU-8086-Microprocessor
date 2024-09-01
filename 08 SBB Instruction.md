# SBB Instruction in Assembly Language ⚙️

The `SBB` instruction is used to subtract the source operand and the borrow flag from the destination operand in the 8086 microprocessor. Below is a detailed explanation of how the `SBB` operation works and an example of how to use it.

## Format 📝

`SBB <destination_operand>, <source_operand>`

- **SBB**: Subtracts the value of the source and borrow from the destination.
- **Operation**: `D - S - B -> D`
- _Destination = Destination - Source - Borrow_

---

## Example Usage 📚

Let’s take an example where we have to subtract two numbers: `5678H` and `1234H` with a borrow:

```asm
MOV AX, 5678H       ; Move the hexadecimal value 5678H into the AX register.

MOV BX, 1234H       ; Move the hexadecimal value 1234H into the BX register.


SBB AX, BX      ; Assume borrow flag is set, subtract the value in BX and the borrow from AX, and store the result in AX.


HLT     ; Halt the execution of the program (stop the CPU).
```

- Final Answer: `5678H - 1234H - Borrow = [Result in AX]`

### Explanation 📖

- **`AX`**, **`BX`**: General-purpose registers in the 8086 microprocessor.
- **SBB**: Subtracts the value from **`source_operand`** and the borrow flag from **`destination_operand`**, and stores the result in the destination register.
- **HLT**: Stops the CPU until a reset or interrupt occurs.

This code performs the following operations:

1. Loads `5678H` into `AX` and `1234H` into `BX`.
2. Subtracts the value in `BX` and the borrow flag from `AX`, and stores the result in `AX`.
3. Halts the execution.

---

![SBB Instruction in Assembly Language](<./Assests/1SBB Instruction in Assembly Language.png>) <br>
![SBB Instruction in Assembly Language](<./Assests/2SBB Instruction in Assembly Language.png>) <br>
![SBB Instruction in Assembly Language](<./Assests/3SBB Instruction in Assembly Language.png>) <br>
![SBB Instruction in Assembly Language](<./Assests/4SBB Instruction in Assembly Language.png>) <br>
![SBB Instruction in Assembly Language](<./Assests/5SBB Instruction in Assembly Language.png>) <br><br>

---

## Sample Code For Understanding: 🔥

Here’s a simple "SBB" operation program written in assembly language for TASM:

```assembly
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
```
