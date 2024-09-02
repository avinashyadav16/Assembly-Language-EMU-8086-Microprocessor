# Rotate Right Through Carry ↩️

## Overview 📝

The `RCR` (Rotate Right Through Carry) instruction in assembly language rotates the bits of the destination operand to the right through the carry flag by a specified count. The bits that are shifted out on the rightmost side are passed into the carry flag, and the carry flag is shifted into the leftmost position of the operand.

## Instruction Format 📜

```assembly
RCR <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be rotated.
- `count`: The number of bit positions to rotate.
- The `RCR` instruction rotates the bits of the destination operand to the right by the number of positions specified in the count, passing through the carry flag.
- The rightmost bit that is shifted out moves into the carry flag, while the carry flag’s previous value moves into the leftmost position of the operand.
- This operation is crucial when performing operations that involve the carry flag, especially in multi-byte or multi-word arithmetic.

## Explanation 🔍

- The `RCR` instruction rotates the bits within the `destination_operand` to the right, including the carry flag in the process.
- During the rotation:
  - The rightmost bit that is shifted out is stored in the carry flag.
  - The previous value of the carry flag is introduced into the leftmost position of the operand.
- This instruction is particularly useful in bit manipulation tasks where the carry flag needs to be included in the rotation, such as in extended precision arithmetic or when preserving carry-over during shifts.

## Example 🧩

```assembly
MOV AX, 7FA4H    ; 0111 1111 1010 0100  (Initial Value in AX)
STC              ; Set the Carry Flag to 1
MOV CL, 02H      ; Rotate by 2 bits

RCR AX, CL       ; Rotate AX right through carry by 2 bits
                 ;
                 ; Initial: 0111 1111 1010 0100 (AX) | CF = 1
                 ; 1st Rotate: 1011 1111 1101 0010 | CF = 0
                 ; 2nd Rotate: 0101 1111 1110 1001 | CF = 0
                 ; Final Value in AX: 5FE9H

HLT              ; Halt the program
```

## Step-by-Step Breakdown: 💡

1. **Initial Value in AX**: `0111 1111 1010 0100` (7FA4H)
2. **Set Carry Flag (STC)**:
   - Carry Flag (CF) = `1`
3. **Rotate by 2 through Carry**:
   - **First Rotation**:
     - Bits: `1011 1111 1101 0010` (CF = 0)
   - **Second Rotation**:
     - Bits: `0101 1111 1110 1001` (CF = 0)
   - Final Result in AX: `0101 1111 1110 1001` (5FE9H)

After the operation, the value in **AX** is `5FE9H`.

![Rotate Right Through Carry](<./Assests/1Rotate Right Through Carry.png>) <br>
![Rotate Right Through Carry](<./Assests/2Rotate Right Through Carry.png>) <br>
![Rotate Right Through Carry](<./Assests/3Rotate Right Through Carry.png>) <br>
![Rotate Right Through Carry](<./Assests/4Rotate Right Through Carry.png>) <br>
![Rotate Right Through Carry](<./Assests/5Rotate Right Through Carry.png>) <br>
![Rotate Right Through Carry](<./Assests/6Rotate Right Through Carry.png>) <br><br>

---

---

- 🛠️ **`The RCR instruction is invaluable for tasks that involve complex bit manipulations where the carry flag needs to be preserved across multiple operations.`**
- 🧑‍💻 **`It's commonly employed in algorithms requiring high precision, such as cryptographic functions, checksum calculations, and other low-level data processing tasks.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "Rotate Right Through Carry" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-23.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Through Carry Right (RCR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 7FA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 7FA4H is: 0111 1111 1010 0100
MOV AX, 7FA4H    ; 0111 1111 1010 0100

; Step 2: Set the Carry Flag
; ------------------------------------------------------------
; Set the carry flag (CF) to 1.
; The carry flag is used in rotate-through-carry operations.
STC              ; CF = 1

; Step 3: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 02H      ; Rotate by 2 positions

; Step 4: Perform Rotate Through Carry Right (RCR) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the right by 2 positions, including the carry flag (CF) in the rotation.
;
; Initial AX (before rotation): 0111 1111 1010 0100
; Carry Flag (CF) before rotation: 1
;
; Step-by-step rotation process:
; 1. First Rotation:
;    - CF is added as the most significant bit (MSB): 1 0111 1111 1010 0100
;    - Rotate right by 1 bit:
;      1011 1111 1101 0010  => Intermediate AX = BFD2H
; 2. Second Rotation:
;    - Rotate right by 1 more bit, with LSB moving to CF:
;      0101 1111 1110 1001  => Final AX = 5FE9H

RCR AX, CL       ; Final AX value: 5FE9H

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
;  - RCR: The RCR (Rotate Through Carry Right) instruction rotates the bits in a register to the right
;         by the specified number of positions, including the carry flag (CF) in the rotation.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 7FA4H into AX and sets the carry flag to 1.
; 2. Rotates the bits in AX to the right by 2 positions, including the carry flag.
; 3. The result of the rotation is stored back in AX, which is 5FE9H.
; 4. The program halts after the rotation.
```
