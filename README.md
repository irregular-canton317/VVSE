# VVSE - Vextoly's Very Simple Editor

A remarkably tiny, functional text editor written in less than **1 KB** of pure Bash. **VVSE** demonstrates the power of standard Unix tools and ANSI escape sequences to create an interactive TUI (Terminal User Interface) without external libraries like `ncurses`.

## Features

* **Sub-1KB Footprint:** The entire editor is roughly 1010 bytes.
* **Zero Dependencies:** Runs on any standard Linux/Unix shell with `stty`, `dd`, and `sed`.
* **Live Search:** Highlighting support for finding strings within your text.
* **Gap-Buffer Logic:** Efficient cursor movement using string manipulation.
* **Raw Mode:** Direct keyboard interaction for a responsive feel.

## Shortcuts

| Key | Action |
| :--- | :--- |
| `^S` (Ctrl+S) | **Save** to file |
| `^O` (Ctrl+O) | **Open** a file |
| `^F` (Ctrl+F) | **Find** / Search (Highlights matches) |
| `^U` (Ctrl+U) | **Clear** entire buffer |
| `^X` (Ctrl+X) | **Exit** editor |
| `Arrows` | Navigate text |

## Usage

1.  **Download the script:**
    ```bash
    chmod +x vvse.sh
    ```
2.  **Run it:**
    ```bash
    ./vvse.sh filename.txt
    ```

> [!TIP]
> If your terminal behavior feels "off" after an unexpected crash, simply type `reset` and hit Enter to restore your terminal settings.

## 🔍 How it Works

The editor operates by splitting your text into two variables: `l` (everything to the left of the cursor) and `r` (everything to the right). When you move the cursor, characters are shifted between these two strings. The interface is rendered using **ANSI Escape Codes** to manipulate the cursor position and clear the screen on every keystroke.

---
*Created by [Vextoly](https://github.com/vextoly)*
