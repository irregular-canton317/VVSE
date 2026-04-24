# VVSE - Vextoly's Very Simple Editor

A remarkably tiny, functional text editor written in less than **1 KB** of pure Bash. **VVSE** focuses on extreme minimalism, using only standard Unix tools and ANSI escape sequences to create a distraction-free TUI.

## Features

* **Ultra-Lightweight:** The entire script is guaranteed to stay under **1024 bytes**.
* **Zero Dependencies:** Built using only `stty`, `dd`, and `sed`.
* **Smart Navigation:** Full 4-way arrow key support (Up, Down, Left, Right).
* **Pure Minimalism:** Hidden terminal cursor and no status bars for a clean "text-only" look.
* **Auto-Pathing:** Pass a filename as an argument to open or create it instantly.
* **Live Highlighting:** Real-time search result marking.

## Shortcuts

| Key | Action |
| :--- | :--- |
| `^S` (Ctrl+S) | **Save** (Auto-saves to path or asks for name) |
| `^O` (Ctrl+O) | **Open** a new file |
| `^F` (Ctrl+F) | **Find** / Search (Highlights matches in yellow) |
| `^U` (Ctrl+U) | **Clear** entire buffer |
| `^X` (Ctrl+X) | **Exit** editor (Restores cursor and terminal) |
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

## To-Do:
- [X] Add Arrow Up/Down
- [X] Add Welcome MSG
- [ ] Allow opening files directly via the `vvse` command
