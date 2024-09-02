# 🖥️ Assembly Language Programs for EMU-8086 Microprocessor

Welcome to the **Assembly-Language-EMU-8086-Microprocessor** repository! This collection contains a series of assembly language programs crafted for the **EMU-8086 microprocessor emulator**. EMU-8086 is a robust and versatile emulator that simulates the Intel 8086 microprocessor, providing an excellent platform for learning, testing, and debugging assembly code.

Whether you're a student delving into low-level programming, a hobbyist exploring computer architecture, or a professional refreshing your skills, this repository offers a comprehensive set of examples and exercises to enhance your understanding of assembly language and microprocessor operations.

---

## 📚 Table of Contents

- [Introduction](#-introduction)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Program Descriptions](#-program-descriptions)
- [Usage](#️-usage)
- [Contributing](#-contributing)
- [Contact](#-contact)

---

## 📖 Introduction

The programs in this repository cover a wide range of instructions and operations supported by the Intel 8086 microprocessor. Each program is documented thoroughly to explain the purpose, functionality, and underlying concepts. By studying and experimenting with these examples, users can gain hands-on experience and deepen their understanding of assembly language programming.

---

## ✅ Prerequisites

Before you begin, ensure you have met the following requirements:

- **Operating System**
- **EMU-8086 Emulator**: Download and install the latest version from the [Download the installer](https://emu8086-microprocessor-emulator.en.download.it/).
- **Basic Knowledge**: Familiarity with programming concepts and basic understanding of microprocessor architecture is beneficial.

---

## 🚀 Getting Started

Follow these steps to get a local copy of the project up and running:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/avinashyadav16/Assembly-Language-EMU-8086-Microprocessor.git
   ```

2. Install EMU-8086 Emulator

   - [Download the installer](https://emu8086-microprocessor-emulator.en.download.it/).
   - Follow the installation instructions provided.

3. Open Programs in EMU-8086

   - Launch the EMU-8086 emulator.
   - Open any `.asm` file.
   - Compile and run the program within the emulator.

## 📂 Program Descriptions

Below is a list of all the assembly language programs included in this repository along with brief descriptions:

[01_EMU8086_Overview.md](./01%20EMU8068%20Overview.md)

- Introduction and overview of the EMU-8086 microprocessor emulator, including its features and usage.

[02_MOV_Instruction.md](./02%20MOV%20Instruction.md)

- Demonstrates the MOV instruction used for transferring data between registers, memory, and immediate values.

[03_ADD_Instruction.md](./03%20ADD%20Instruction.md)

- Explores the ADD instruction for performing arithmetic addition operations.

[04_SUB_Instruction.md](./04%20SUB%20Instruction.md)

- Illustrates the SUB instruction used for arithmetic subtraction operations.

[05_INC_Instruction.md](./05%20INC%20Instruction.md)

- Covers the INC instruction which increments the value of a register or memory location by one.

[06_DEC_Instruction.md](./06%20DEC%20Instruction.md)

- Details the DEC instruction used to decrement the value of a register or memory location by one.

[07_ADC_Instruction.md](./07%20ADC Instruction.md)

- Explains the ADC (Add with Carry) instruction for adding numbers along with the carry flag.

[08_SBB_Instruction.md](./08%20SBB%20Instruction.md)

- Discusses the SBB (Subtract with Borrow) instruction for subtraction operations considering the borrow flag.

[09_MUL_Instruction.md](./09%20MUL Instruction.md)

- Demonstrates the MUL instruction used for unsigned multiplication operations.

[10_LOOP_Instruction.md](./10%20LOOP Instruction.md)

- Shows the usage of the LOOP instruction for implementing loops and repetitive tasks.

[11_Write_In_Data_Memory_Segment.md](./11%20Write%20In%20Data%20Memory%20Segment.md)

- Provides examples of writing data directly into the data memory segment.

[12_PUSH_and_POP_Instruction.md](./12%20PUSH%20&%20POP%20Instruction.md)

- Explores the PUSH and POP instructions for stack operations.

[13_AND_Instruction.md](./13%20AND%20Instruction.md)

- Illustrates the AND instruction used for bitwise logical AND operations.

[14_OR_Instruction.md](./14%20OR%20Instruction.md)

- Covers the OR instruction used for bitwise logical OR operations.

[15_XOR_Instruction.md](./15%20XOR%20Instruction.md)

- Details the XOR instruction used for bitwise logical XOR operations.

[16_NOT_Instruction.md](./16%20NOT%20Instruction.md)

- Explains the NOT instruction for bitwise logical negation.

[17_DIV_Instruction.md](./17%20DIV%20Instruction.md)

- Demonstrates the DIV instruction used for unsigned division operations.

[18_UNCONDITIONAL_JUMP_Instruction.md](./18%20UNCONDITIONAL%20JUMP%20Instruction.md)

- Shows how to use unconditional jump instructions to alter the flow of execution.

[19_CONDITIONAL_JUMP_Instruction.md](./19%20CONDITIONAL%20JUMP%20Instruction.md)

- Explores conditional jump instructions for decision-making processes in programs.

[20_ROL_Instruction.md](./20%20ROL%20Instruction.md)

- Discusses the ROL (Rotate Left) instruction for rotating bits to the left.

[21_ROR_Instruction.md](./21%20ROR%20Instruction.md)

- Covers the ROR (Rotate Right) instruction for rotating bits to the right.

[22_RCL_Instruction.md](./22%20RCL%20Instruction.md)

- Details the RCL (Rotate through Carry Left) instruction.

[23_RCR_Instruction.md](./23%20RCR%20Instruction.md)

- Explains the RCR (Rotate through Carry Right) instruction.

[24_SHL_and_SAL_Instruction.md](./24%20SHL%20&%20SAL Instruction.md)

- Illustrates the SHL and SAL (Shift Left/Arithmetic Left) instructions for shifting bits left.

[25_SHR_and_SAR_Instruction.md](./25%20SHR%20&%20SAR Instruction.md)

- Discusses the SHR and SAR (Shift Right/Arithmetic Right) instructions for shifting bits right.

[26_CMP_Instruction.md](./26%20CMP Instruction.md)

- Demonstrates the CMP instruction used for comparing two operands.

[27_Data_Movement_From_DATA_SEGMENT_To_INTERNAL_REGISTERS.md](./27%20Data%20Movement%20From%20DATA%20SEGMENT%20To%20INTERNAL%20REGISTERS.md)

- Shows how to move data from the data segment to internal registers.

[28_MOVSB_STRING_Instruction.md](./28%20MOVSB%20STRING Instruction.md)

- Explores the MOVSB instruction for moving string bytes between memory locations.

[29_MOVSW_STRING_Instruction.md](./29%20MOVSW%20STRING Instruction.md)

- Covers the MOVSW instruction for moving string words between memory locations.

## 🛠️ Usage

Follow these steps to run and test the assembly programs:

1. Open EMU-8086 Emulator

- Launch the EMU-8086 application installed on your system.

2. Load the Program

- Click on File > Open and navigate to the desired .asm file from this repository.

3. Compile the Program

- Click on Compile or press F5 to compile the assembly code.

4. Run the Program

- After successful compilation, click on Run or press F9 to execute the program.
- Use the emulator's debugging tools to step through the code, inspect registers, and monitor memory changes.

5. Experiment and Learn

- Modify the code to observe different behaviors and outcomes.
- Use the emulator's features to understand the impact of each instruction thoroughly.

## 🤝 Contributing

Contributions are welcome! If you have suggestions for improvements, additional programs, or bug fixes, please follow these steps:

1. Fork the Repository

   - Click on the Fork button at the top right corner of this page.

2. Create a Branch

```bash
git checkout -b feature/YourFeatureName
```

3. Make Changes

   - Add your changes and commit them with clear and descriptive messages.

4. Push to the Branch

```bash
git push origin feature/YourFeatureName
```

5. Open a Pull Request

   - Navigate to your forked repository and click on Compare & pull request.
   - Provide a clear description of your changes and submit the pull request.

## 📫 Contact

If you have any questions, suggestions, or feedback, feel free to reach out:

- GitHub: avinashyadav16

<br><br><br><br>

**Thank you for visiting this repository!** 🌟

_Happy coding and learning with EMU-8086!_ ⛳0️⃣1️⃣🛤️

---

---
