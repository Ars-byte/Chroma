# Chroma

> Minimalist terminal color palette viewer.

**Chroma** is a clean, distraction-free color palette viewer for Linux terminals. It dynamically renders your active terminal color scheme using centered 3D card swatches.

```
                    ███▄  ███▄  ███▄  ███▄  ███▄  ███▄  ███▄
                    ████  ████  ████  ████  ████  ████  ████
                    ████  ████  ████  ████  ████  ████  ████
                     ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀   ▀▀▀
```

---

## Features

- **Distraction-Free:** Cleans the screen buffer, hides the cursor, and displays only your swatches centered horizontally and vertically.
- **Dynamic Palettes:** Automatically adapts to whatever color scheme your terminal emulator is using.

---

## Quick Installation

```bash
git clone https://github.com/Ars-byte/Chroma.git
cd Chroma
chmod +x install.sh
./install.sh
```

Make sure `~/.local/bin` is in your `PATH`:
```bash
# bash / zsh
export PATH="$HOME/.local/bin:$PATH"

# fish
fish_add_path ~/.local/bin
```

---

## License

[MIT](LICENSE) © 2026 Ars-byte
