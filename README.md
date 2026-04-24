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

---

## Installation

Get **VVSE** running on your system with a single command. This will download the script, move it to your local binaries, and make it executable.

### Automatic Setup
```bash
curl -s https://raw.githubusercontent.com/vextoly/VVSE/main/main.sh | sudo tee /usr/local/bin/vvse > /dev/null && sudo chmod +x /usr/local/bin/vvse
```

### Manual Setup
If you prefer to install it without `sudo` (to your local user folder):
```bash
mkdir -p ~/.local/bin
curl -s https://raw.githubusercontent.com/vextoly/VVSE/main/main.sh > ~/.local/bin/vvse
chmod +x ~/.local/bin/vvse
```
*Note: Ensure `~/.local/bin` is in your `$PATH`.*

---

> [!TIP]
> If your terminal behavior feels "off" after an unexpected crash, simply type `reset` and hit Enter to restore your terminal settings.

## Screenshot
<img width="990" height="541" alt="image" src="https://github.com/user-attachments/assets/58a025fe-fd9d-497e-8da5-ac9a1e831552" />
