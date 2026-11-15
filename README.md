# Chroma

> Minimalist terminal color palette viewer.

**Chroma** is a clean, distraction-free color palette viewer for Linux terminals. It dynamically renders your active terminal color scheme using centered 3D card swatches, with built-in support for floating windows and classic *shell-color-scripts*.

```
                    ███▄  ███▄  ███▄  ███▄  ███▄  ███▄  ███▄
                    ████  ████  ████  ████  ████  ████  ████
                    ████  ████  ████  ████  ████  ████  ████
                     ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀
```

---

## Features

- **Distraction-Free:** Cleans the screen buffer and hides the cursor; displays only your swatches centered horizontally and vertically.
- **Dynamic Palettes:** Automatically adapts to whatever color scheme your terminal emulator or rice is using.
- **Floating Window Mode:** Launches as a minimal floating popup window (506×145 px, styled for tiling window managers like Sway / Hyprland).
- **Color Scripts Included:** Integrated collection of 50+ ANSI art color scripts from *shell-color-scripts*.

---

## Quick Installation

```bash
git clone https://github.com/Ars-byte/Chroma.git
cd Chroma
chmod +x install.sh
./install.sh
```

The installer copies `chroma` to `~/.local/bin/` and sets up `palette` and `pallete` aliases.

Make sure `~/.local/bin` is in your `PATH`:
```bash
# bash / zsh
export PATH="$HOME/.local/bin:$PATH"

# fish
fish_add_path ~/.local/bin
```

---

## Usage

```bash
# Default: centered fullscreen view (press any key to exit)
chroma

# Open as a clean floating popup window
chroma -w

# Print directly to stdout without clearing screen
chroma -p

# Show 8 base colors (including color 0 / black)
chroma -8

# Show all 16 colors (regular + bright rows)
chroma -16

# Run a random script from shell-color-scripts
chroma -r

# List all available scripts
chroma -l

# Run a specific script
chroma pacman
```

*(You can also invoke it with `palette` or `pallete`)*

---

## License

[MIT](LICENSE) © 2026 Ars-byte
