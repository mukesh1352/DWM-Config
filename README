# DWM-Config

My personal configuration of **dwm (dynamic window manager)** — minimal, fast, patched, and designed for long-term reuse.

This repository contains the **full dwm source**, applied patches, configuration, and startup scripts in a **clean and reproducible layout**, so it can be cloned and used again on any system with minimal effort.

## Patches Used

All patches are stored in the `patches/` directory for reference and reapplication:

- **attachaside** – New clients attach beside the master window
- **pertag** – Per-tag layouts and settings
- **scratchpad** – Drop-down terminal for quick access

> Patch files are kept separately to keep the source tree clean and understandable.

---

## Requirements

To build dwm, you need:

- X11 (Xorg)
- Xlib header files
- A C compiler (`gcc` or `clang`)
- `make`

### Arch Linux
```bash
sudo pacman -S xorg-server xorg-xinit libx11
````

(Install equivalent packages on other distributions.)

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/mukesh1352/DWM-Config.git
cd DWM-Config
```

### 2. Generate `config.h`

`config.h` is generated from `config.def.h` and is **not tracked**.

```bash
cp config.def.h config.h
```

### 3. Build and install

```bash
make clean install
```

> You may need `sudo` depending on your system prefix.

---

## Running dwm

### Using `.xinitrc`

Add the following line to `~/.xinitrc`:

```sh
exec dwm
```

Then start X with:

```bash
startx
```

---

## Autostart

This setup uses the **autostart patch**.

Startup applications are defined in:

```
scripts/autostart.sh
```

This file is **tracked in the repository** and **symlinked** to:

```
~/.dwm/autostart.sh
```

### Included services

* Wallpaper (`feh`)
* Compositor (`picom`)
* Notifications (`dunst`)
* Polkit authentication agent
* Status bar (`dwmblocks`)

### Editing autostart

No recompilation is required.

After changes:

```bash
Mod + Shift + r   # restart dwm
```

---

## Configuration Workflow (Important)

* All configuration is done in **`config.def.h`**
* `config.h` is generated and ignored by Git

After any config change:

```bash
cp config.def.h config.h
make clean install
```

This keeps the repository **clean, portable, and reproducible**.

---

## Repository Structure

```
DWM-Config/
├── config.def.h        # main dwm configuration
├── patches/            # dwm patches
├── scripts/
│   └── autostart.sh    # startup programs
├── dwm.c               # dwm source
├── Makefile
├── config.mk
├── README.md
└── LICENSE
```

---

## Notes for Future Me 🙂

* Never commit `config.h`
* Keep patches isolated in `patches/`
* Autostart changes do NOT require recompiling dwm
* Tag stable versions using Git tags
* This repo alone is enough to rebuild dwm from scratch

---

## Credits

* dwm by the suckless community
* [https://dwm.suckless.org/](https://dwm.suckless.org/)

---

## License

MIT / ISC (same as dwm)
