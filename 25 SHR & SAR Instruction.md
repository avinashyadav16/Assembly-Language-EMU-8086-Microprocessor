# SHR & SAR Instruction 🏹

## Overview 📝

The `SHR` (Shift Logical Right) and `SAR` (Shift Arithmetic Right) instructions are used to shift the bits of a destination operand to the right by a specified count. These instructions have distinct behaviors based on whether the operand is treated as a logical or arithmetic value.

- **`SHR (Shift Logical Right)`**: Shifts the bits to the right, filling the most significant bit (MSB) with 0. This instruction treats the operand as an unsigned binary number.

- **`SAR (Shift Arithmetic Right)`**: Shifts the bits to the right, considering the operand as a signed 2's complement number. The MSB (sign bit) is preserved, making this instruction suitable for signed numbers.

## Instruction Formats 📜

```assembly
SHR <destination_operand>, <count>
SAR <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be shifted.
- `count`: The number of bit positions to shift.

## Logical Shift vs. Arithmetic Shift 🔍

### Logical Shift: `SHR`

- The `SHR` instruction shifts the bits of the operand to the right by the specified count.
- The MSB is filled with 0, effectively treating the operand as an unsigned binary number.
- The bits shifted out on the right are discarded.

### Arithmetic Shift: `SAR`

- The `SAR` instruction shifts the bits of the operand to the right by the specified count, considering the operand as a signed 2's complement number.
- The MSB (sign bit) remains unchanged, which preserves the sign of the number.
- The bits shifted out on the right are discarded.

_`SHR and SAR yield different results when dealing with signed numbers, making the choice between them critical based on the data type and operation.`_

## Example 🧩

### Example 1: Logical Shift Right (`SHR`)

```assembly
MOV AX, 7FA4H  ; 0111 1111 1010 0100  (Initial Value in AX)
MOV CL, 02H    ; Shift by 2 bits

SHR AX, CL     ; Shift AX right by 2 bits
               ;
               ; Initial: 0111 1111 1010 0100
               ; 1st Shift: 0011 1111 1101 0010
               ; 2nd Shift: 0001 1111 1110 1001
               ; Final Value in AX: 1FE9H

HLT            ; Halt the program
```

### Example 2: Arithmetic Shift Right (`SAR`)

```assembly
MOV AX, 7FA4H  ; 0111 1111 1010 0100  (Initial Value in AX)
MOV CL, 02H    ; Shift by 2 bits

SAR AX, CL     ; Shift AX right by 2 bits, preserving sign
               ;
               ; Initial: 0111 1111 1010 0100
               ; 1st Shift: 0011 1111 1101 0010 (Sign bit remains 0)
               ; 2nd Shift: 0001 1111 1110 1001 (Sign bit remains 0)
               ; Final Value in AX: 1FE9H

HLT            ; Halt the program
```

## Step-by-Step Breakdown: 💡

1. **Initial Value in AX**: `0111 1111 1010 0100` (7FA4H)
2. **Shift by 2**:
   - **First Shift**:
     - **Logical Shift (SHR)**: `0011 1111 1101 0010`
     - **Arithmetic Shift (SAR)**: `0011 1111 1101 0010` (MSB remains unchanged)
   - **Second Shift**:
     - **Logical Shift (SHR)**: `0001 1111 1110 1001`
     - **Arithmetic Shift (SAR)**: `0001 1111 1110 1001` (MSB remains unchanged)
   - **Final Result**: `1FE9H` in AX for both `SHR` and `SAR` when shifting this specific value.

![SHR & SAR Instruction](<./Assests/1SHR & SAR Instruction.png>) <br>
![SHR & SAR Instruction](<./Assests/2SHR & SAR Instruction.png>) <br>
![SHR & SAR Instruction](<./Assests/3SHR & SAR Instruction.png>) <br>
![SHR & SAR Instruction](<./Assests/4SHR & SAR Instruction.png>) <br><br>

## Remark Point 🛠️

- `SHR` is used when dealing with unsigned binary numbers, ensuring logical shifts by filling the MSB with 0.
- `SAR` is essential for signed numbers, as it preserves the sign bit, ensuring the number's sign remains correct after the shift.

---

---

- 🔧 **`Understanding the difference between SHR and SAR is crucial for performing accurate bitwise operations on both signed and unsigned data.`**
- 💡 **`In assembly programming, the choice between SHR and SAR can significantly impact the outcome of bitwise shifts, especially when dealing with signed numbers.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "SAR Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-25.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Arithmetic Shift Right (SAR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 0BFA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 0BFA4H is: 1011 1111 1010 0100
MOV AX, 0BFA4H   ; 1011 1111 1010 0100

; Step 2: Load Shift Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for shift instructions.
MOV CL, 02H     ; Shift by 2 positions

; Step 3: Perform Arithmetic Shift Right (SAR) Operation
; ------------------------------------------------------------
; Shift the bits in AX to the right by 2 positions with sign extension.
;
; Initial AX (before shift): 1011 1111 1010 0100
;
; Step-by-step shifting process:
; 1. Shift right by 1 position:
;    - 1101 1111 1101 0010  => The leftmost bit (1) is replicated to fill in the left side.
; 2. Shift right by another position:
;    - 1110 1111 1110 1001  => Final AX = EFE9H

SAR AX, CL      ; Final AX value: EFE9H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for shift/rotate count.
;  - SAR: The SAR (Arithmetic Shift Right) instruction shifts the bits in a register to the right by the specified number of positions.
;         The sign bit (leftmost bit) is replicated to fill in the left side, preserving the sign of the number.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 0BFA4H into AX.
; 2. Shifts the bits in AX to the right by 2 positions with sign extension.
; 3. The result of the shift is stored back in AX, which is EFE9H.
; 4. The program halts after the shift.
```
