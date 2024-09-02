# Rotate Through Carry Instruction 🔄

## Overview 📝

The `RCL` (Rotate Through Carry Left) instruction in assembly language rotates the bits of the destination operand to the left through the carry flag by a specified count. The bits that are shifted out on the leftmost side are passed into the carry flag, and the carry flag is shifted into the rightmost position of the operand.

## Instruction Format 📜

```assembly
RCL <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be rotated.
- `count`: The number of bit positions to rotate.
- The `RCL` instruction rotates the bits of the destination operand to the left by the number of positions specified in the count, passing through the carry flag.
- The leftmost bit that is shifted out moves into the carry flag, while the carry flag’s previous value moves into the rightmost position of the operand.
- This operation includes the carry flag in the rotation process, which can be useful in certain arithmetic operations and when performing multi-word shifts.

## Explanation 🔍

- The `RCL` instruction rotates the bits within the `destination_operand` to the left, incorporating the carry flag into the rotation process.
- During the rotation:
  - The leftmost bit that is shifted out is stored in the carry flag.
  - The previous value of the carry flag is introduced into the rightmost position of the operand.
- This instruction is particularly useful in implementing arithmetic operations that require carry-over bits, like extended precision arithmetic.

## Example 🧩

```assembly
MOV AX, 1234H     ; 0001 0010 0011 0100  (Initial Value in AX)
STC               ; Set the Carry Flag to 1
MOV CL, 01H       ; Rotate by 1 bit

RCL AX, CL        ; Rotate AX left through carry by 1 bit
                  ;
                  ; Initial:  1 (CF) | 0001 0010 0011 0100 (AX)
                  ; Rotate:   0 (new CF) | 0010 0100 0110 1001 (AX)
                  ; Final Value in AX: 0010 0100 0110 1001 => 2469H

HLT               ; Halt the program
```

## Step-by-Step Breakdown: 💡

1. **Initial Value in AX**: `0001 0010 0011 0100` (1234H)
2. **Set Carry Flag (STC)**:
   - Carry Flag (CF) = `1`
3. **Rotate by 1 through Carry**:
   - Rotate through Carry:
     - Initial CF: 1, AX: `0001 0010 0011 0100`
     - After Rotation: CF: 0, AX: `0010 0100 0110 1001`
   - Final Result in AX: `0010 0100 0110 1001` (2469H)

After the operation, the value in AX is `2469H`.

![Rotate Through Carry Instruction](<./Assests/1Rotate Through Carry Instruction.png>) <br>
![Rotate Through Carry Instruction](<./Assests/2Rotate Through Carry Instruction.png>) <br>
![Rotate Through Carry Instruction](<./Assests/3Rotate Through Carry Instruction.png>) <br>
![Rotate Through Carry Instruction](<./Assests/4Rotate Through Carry Instruction.png>) <br>
![Rotate Through Carry Instruction](<./Assests/5Rotate Through Carry Instruction.png>) <br>
![Rotate Through Carry Instruction](<./Assests/6Rotate Through Carry Instruction.png>) <br>

---

---

- **`The RCL instruction is essential in scenarios where operations extend beyond the size of a single register and require a carry flag to maintain precision.`**
- **`It is commonly used in algorithms that perform multi-word arithmetic operations and need to account for carry bits, ensuring that no information is lost during bit shifts.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "RCL instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-22.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Through Carry Left (RCL) Operation  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 1234H is: 0001 0010 0011 0100
MOV AX, 1234H     ; 0001 0010 0011 0100

; Step 2: Set the Carry Flag
; ------------------------------------------------------------
; Set the carry flag (CF) to 1.
; The carry flag is used in rotate-through-carry operations.
STC               ; CF = 1

; Step 3: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 01H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 01H

; Step 4: Perform Rotate Through Carry Left (RCL) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the left by 1 position, including the carry flag (CF) in the rotation.
;
; Initial AX (before rotation): 0001 0010 0011 0100
; Carry Flag (CF) before rotation: 1
;
; Step-by-step rotation process:
; 1. CF is added as the least significant bit (LSB): 1000 1001 0011 0100
; 2. Rotate left by 1 bit:
;    - 0010 0100 0110 1001  => AX = 2469H

RCL AX, CL        ; Final AX value: 2469H

; Step 5: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - STC: Set the carry flag (CF) to 1.
;  - RCL: The RCL (Rotate Through Carry Left) instruction rotates the bits in a register to the left
;         by the specified number of positions, including the carry flag (CF) in the rotation.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 1234H into AX and sets the carry flag to 1.
; 2. Rotates the bits in AX to the left by 1 position, including the carry flag.
; 3. The result of the rotation is stored back in AX, which is 2469H.
; 4. The program halts after the rotation.
```
