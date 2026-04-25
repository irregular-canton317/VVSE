# VVSE - Vextoly's Very Simple Editor (PoC)

A remarkably tiny, functional text editor written in less than **1 KB** of pure Bash. **VVSE** focuses on extreme minimalism, using only standard Unix tools and ANSI escape sequences to create a distraction-free TUI.

## Features

* **Ultra-Lightweight:** The entire script is guaranteed to stay under **1024 bytes**.
* **Zero Dependencies:** Built using only POSIX-standard `sh`, `stty`, `dd`, and `sed`.
* **Smart Navigation:** Full 4-way arrow key support for fluid cursor movement through the text buffer.
* **CLI Integration:** Pass a filename as a command-line argument to load or create it instantly (e.g., `./vvse.sh notes.txt`).
* **Live Highlighting:** Real-time search result marking using ANSI color escape sequences.
* **Dynamic UI Toggle:** Use **Ctrl+H** to hide the status bar for a clean, "distraction-free" interface or show it for quick command reference.
* **Native Control:** Standardized keybinds for Save (**^S**), Open (**^O**), Find (**^F**), and Exit (**^X**).

## Shortcuts

| Key | Action |
| :--- | :--- |
| `^S` (Ctrl+S) | **Save** (Auto-saves to path or asks for name) |
| `^O` (Ctrl+O) | **Open** a new file |
| `^F` (Ctrl+F) | **Find** / Search (Highlights matches in yellow) |
| `^U` (Ctrl+U) | **Clear** entire buffer |
| `^X` (Ctrl+X) | **Exit** editor (Restores cursor and terminal) |
| `^H` (Ctrl+H) | **Toggle** UI |
| `Arrows` | **Navigate** through text |

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

## What VVSE isn’t
VVSE is intentionally minimal, and that means a lot of things it *does not* try to be:

* Not a full-featured editor
* Not stable or production-ready software
* Not optimized for performance
* Not extensible
* Not designed for large-scale editing
* Not a replacement for real-world tools
* Not made for files >500KB
