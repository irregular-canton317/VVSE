## VVSE-mini


**VVSE-mini** is the distilled essence of an already microscopic editor. While the original **VVSE** fits under 1KB, this "mini" version is for when every single byte counts—a bare-bones, code-golfed proof of concept that proves you don't need a massive binary to manipulate text.

If the standard VVSE is too bloated for your tastes, this version trims the fat until only the bone remains.

---

## The "Lower Floor" of Minimalism

If the original VVSE is a minimalist apartment, **VVSE-mini** is a sleeping pod. It is designed for environments where storage is non-existent, or for users who believe that even a single line of UI is a distraction.

### Key Differences from VVSE
* **No UI/Status Bar:** The screen shows only your text. There are no labels, line counts, or help menus.
* **Less Keybinds**
* **Invisible Prompts:** To keep the code microscopic, there are no text prompts for saving or opening. When you trigger a command, the editor waits for your input in the "dark"—you just type the path and hit Enter.

---

## Shortcuts

| Key | Action |
| :--- | :--- |
| `^S` (Ctrl+S) | **Save**: Type the filename directly and hit **Enter**. |
| `^O` (Ctrl+O) | **Open**: Type the filename directly and hit **Enter**. |
| `^X` (Ctrl+X) | **Exit**: Immediately terminates and restores terminal settings. |
| `Backspace` | Deletes the character to the left of the cursor. |
| `Arrows` | Move the cursor through the text. |

---

## How to Save/Open (The "Blind" Method)

Because every byte used for a "Please enter filename:" prompt was deleted to save space, saving and opening files requires a bit of muscle memory:

1. Press **Ctrl+S** (to save) or **Ctrl+O** (to open).
2. **Type the filename or path** (e.g., `notes.txt`) directly into the void.
3. Hit **Enter**.
4. The editor will resume, and your action is complete.
