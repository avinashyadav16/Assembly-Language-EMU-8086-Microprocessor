# Rotate Left Instruction 🔄

## Overview 📝

The `ROL` (Rotate Left) instruction in assembly language rotates the bits of the destination operand to the left by a specified count. The bits that are shifted out on the leftmost side are reintroduced on the rightmost side.

## Instruction Format 📜

```assembly
ROL <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be rotated.
- `count`: The number of bit positions to rotate.

- The `ROL` instruction rotates the bits of the destination operand to the left by the number of positions specified in the count.
- The leftmost bits that are shifted out are reintroduced at the rightmost positions.
- The content of the operand is shifted left, and the bits that are rotated out on the left are shifted into the rightmost positions.

## Explanation 🔍

- The `ROL` instruction rotates the bits within the `destination_operand` to the left, where the `count` specifies how many positions the bits should be rotated.
- During the rotation:
  - The leftmost bits that are shifted out are moved to the rightmost positions.
  - No bits are lost; they are simply rotated around.

## Example 🧩

```assembly
MOV AX, 124FH   ; 0001 0010 0100 1111  (Initial Value in AX)
MOV CL, 03H     ; Rotate by 3 bits

ROL AX, CL      ; Rotate AX left by 3 bits
                ;
                ; 1st Rotate: _ _ _1 0010 0100 1111
                ; 2nd Rotate:    1 0010 0100 1111 _ _ _
                ; 3rd Rotate:    1 0010 0100 1111 0 0 0
                ; Final Value: 1 0 01 0010 0111 1000 => 9278H

HLT             ; Halt the program
```

### 💡 Step-by-Step Breakdown:

1. **Initial Value in AX**:` 0001 0010 0100 1111` (124FH)
2. **Rotate by 1**:
   - Bits: `_ _ _1 0010 0100 1111`
3. **Rotate by 2**:
   - Bits: `1 0010 0100 1111 _ _ _`
4. **Rotate by 3**:
   - Bits: `1 0010 0100 1111 0 0 0`
   - Final Result: `1001 0010 0111 1000` (9278H in AX)

After the operation, the value in AX is `9278H`.

![ROL instruction](<./Assests/1ROL instruction.png>) <br>
![ROL instruction](<./Assests/2ROL instruction.png>) <br>
![ROL instruction](<./Assests/3ROL instruction.png>) <br>
![ROL instruction](<./Assests/4ROL instruction.png>) <br>

---

---

- **`The ROL instruction is useful for operations that require bit manipulation, such as encryption, checksums, and other low-level data processing tasks.`**
- **`Understanding how bitwise rotations work is crucial for optimizing performance in assembly language programming.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "ROL instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-20.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Left (ROL) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 124FH into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 124FH is: 0001 0010 0100 1111
MOV AX, 124FH   ; 0001 0010 0100 1111

; Step 2: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 03H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 03H

; Step 3: Perform Rotate Left (ROL) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the left by the number of positions specified in CL.
; The bits that are rotated out on the left are reintroduced on the right side.
;
; Initial AX (before rotation): 0001 0010 0100 1111
; Step-by-step rotation process:
; 1. Rotate left by 1 bit:
;    - 0010 0100 1001 1110
; 2. Rotate left by 1 more bit:
;    - 0100 1001 0011 1100
; 3. Rotate left by 1 more bit:
;    - 1001 0010 0111 1000  => AX = 9278H
ROL AX, CL      ; Final AX value: 9278H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - ROL: The ROL (Rotate Left) instruction rotates the bits in a register to the left.
;         The bits shifted out from the leftmost position are placed back in the rightmost positions.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 124FH into AX and 03H into CL.
; 2. Rotates the bits in AX to the left by 3 positions.
; 3. The result of the rotation is stored back in AX, which is 9278H.
; 4. The program halts after the rotation.
```
