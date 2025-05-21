An assembly project to simulate the maze game.
# 8086 Assembly Quiz Game

This is a simple multiple-choice quiz game written entirely in **x86 DOS Assembly Language**, using **TASM (Turbo Assembler)** and **DOS interrupts** for input/output operations. The program runs in a DOS environment or DOSBox emulator and presents the user with 9 questions related to assembly language and debugging concepts.

---

## 💡 Features

- Interactive command-line style quiz interface.
- Displays multiple choice questions and accepts keyboard input.
- Provides immediate feedback based on correct answers.
- Calculates and displays final score at the end of the quiz.
- Written using basic **BIOS (INT 16h)** and **DOS (INT 21h)** interrupt calls.

---

## 🧾 Questions Covered

The quiz includes questions about:
- Memory storage
- Assemblers (e.g., TASM)
- CPU registers
- Debugging commands
- String display in DOS
- Segment and offset addressing

---

## ⚙️ Requirements

To run this program, you need:

- A DOS-based environment:
  - [DOSBox](https://www.dosbox.com/ )
  - Turbo Assembler (TASM)
- Or an emulator that supports 16-bit real mode execution.

---

## 🛠 How to Assemble and Run

### Assembling with TASM:

```bash
tasm quiz.asm
tlink /t quiz.obj
