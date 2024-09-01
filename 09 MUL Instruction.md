# MUL Instruction in Assembly Language 🚀

The `MUL` instruction is used to perform multiplication of unsigned numbers in the 8086 microprocessor. Below is a detailed explanation of how the `MUL` operation works and examples of its usage.

## Format 📝

### For 8-bit Multiplication

**`MUL <D8>`**

- `<D8>` \* AL => AX
- Perform multiplication of an 8-bit operand with the AL register.
- The result is stored in the AX register.
- The operation is: `<D8>` \* AL => AX
- Details:
  - AL is the lower 8 bits of the AX register & is the default multiplier.
  - `<D8>` is the 8-bit value in any general-purpose register or memory location.
  - The result is 16 bits wide and is stored in AX:
  - AL holds the lower 8 bits of the result.
  - AH holds the upper 8 bits of the result.

---

### For 16-bit Multiplication

**`MUL <D16>`**

- `<D16>` \* AX => DX, AX
- Perform multiplication of a 16-bit operand with the AX register.
- The result is stored in the DX:AX register pair.
- The operation is: `<D16>` \* AX => DX:AX

- Details:
  - AX is the default 16-bit multiplier.
  - `<D16>` is the 16-bit value in any general-purpose register or memory location.
  - The result is 32 bits wide:
  - AX holds the lower 16 bits of the result.
  - DX holds the upper 16 bits of the result.

---

### Key Points to Remember 📌

- MUL is a keyword for Multiplication.
- The MUL instruction always requires either a memory location or a register; immediate values cannot be used directly.
- The multiplication operation uses the Accumulator Register (AL for 8-bit, AX for 16-bit) as the default multiplier.

---

### Example Usage 📚

- **Example for 8-bit multiplication**

```asm
MOV AL, 0x05    ; Load 0x05 into AL
MOV BL, 0x03    ; Load 0x03 into BL
MUL BL          ; Multiply AL by BL, result in AX (AL = 0F, AH = 00)
HLT             ; Halt the program
```

- **Example for 16-bit multiplication**

```asm
MOV AX, 0x1234  ; Load 0x1234 into AX
MOV BX, 0x5678  ; Load 0x5678 into BX
MUL BX          ; Multiply AX by BX, result in DX:AX
HLT             ; Halt the program
```

### Explanation 📖

In the 8-bit example, AL is multiplied by BL, and the result is stored in AX.
In the 16-bit example, AX is multiplied by BX, and the result is stored in the DX:AX register pair.
The result is automatically divided between the lower (AX) and upper (DX) registers depending on the width of the operands.

---

![MUL Instruction in Assembly Language](<./Assests/1MUL Instruction in Assembly Language.png>) <br>
![MUL Instruction in Assembly Language](<./Assests/2MUL Instruction in Assembly Language.png>) <br>
![MUL Instruction in Assembly Language](<./Assests/3MUL Instruction in Assembly Language.png>) <br>
![MUL Instruction in Assembly Language](<./Assests/4MUL Instruction in Assembly Language.png>) <br><br>

---

## Sample Code For Understanding: 🔥

Here’s a simple "MUL" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-09.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      MUL Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV AL, 14H       ; Load the hexadecimal value 14H into the AL register.
                  ; AL = 14H (which is 20 in decimal).

MOV BL, 24H       ; Load the hexadecimal value 24H into the BL register.
                  ; BL = 24H (which is 36 in decimal).

MUL BL            ; Multiply the value in BL (24H) with the value in AL (14H).
                  ; The result of the multiplication is stored in the AX register.
                  ; AX = AL * BL = 14H * 24H = 02D0H.
                  ; After this operation:
                  ;   - AL = D0H (lower 8 bits of the result)
                  ;   - AH = 02H (upper 8 bits of the result)
                  ; So, AX = 02D0H.

MOV AX, 1234H     ; Load the hexadecimal value 1234H into the AX register.
                  ; AX = 1234H.

MOV BX, 5678H     ; Load the hexadecimal value 5678H into the BX register.
                  ; BX = 5678H.

MUL BX            ; Multiply the value in BX (5678H) with the value in AX (1234H).
                  ; The result of the multiplication is stored in the DX:AX register pair.
                  ; The operation is: DX:AX = AX * BX = 1234H * 5678H = 06260060H.
                  ; After this operation:
                  ;   - AX = 0060H (lower 16 bits of the result)
                  ;   - DX = 0626H (upper 16 bits of the result)
                  ; So, DX:AX = 0626:0060H.

HLT               ; Halt the processor.
                  ; This instruction stops the execution of the program.
                  ; The processor will remain in a halted state until it is reset or interrupted.
```
