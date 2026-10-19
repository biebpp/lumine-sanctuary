# Lumine's Sanctuary

*A cozy bronze-and-gold desktop sanctuary, built by Abim with Lumine as his AI collaborator.*

Lumine's Sanctuary is Abim's personal CachyOS desktop configuration, developed collaboratively by Abim and Lumine, his AI assistant. It brings together Hyprland, Noctalia, Kitty, Alacritty, and Fish under a warm bronze-and-gold palette. The system, preferences, and final decisions belong to Abim; Lumine helps with planning, documentation, and refining configuration ideas. The setup is personal, practical, and meant to be understandable and easy to adapt.

## Theme palette

| Color | Hex | Intended use |
|---|---|---|
| **Starless Bronze** | `#29231C` | Main dark background |
| **Ancient Umber** | `#393027` | Secondary surfaces |
| **Traveler's Gold** | `#D9B96E` | Primary accent, cursor, highlights |
| **Celestial Ivory** | `#F4F0E8` | Main text and emphasis |
| **Earthbound Umber** | `#755640` | Tertiary accent and selection |
| **Muted Bronze** | `#5B4A36` | Outlines and subdued details |
| **Muted Rose** | `#C97870` | Terminal red |
| **Sage Green** | `#A6B99A` | Terminal green |
| **Warm Mauve** | `#B99A78` | Secondary accent |
| **Soft Sage** | `#A5B6A5` | Terminal cyan |

The source palette is [`noctalia/palettes/Midnight Golden Journey.json`](noctalia/palettes/Midnight%20Golden%20Journey.json).

## What's included

- `hypr/` — Hyprland configuration split into focused Lua modules.
- `noctalia/palettes/` — the Midnight Golden Journey palette.
- `kitty/` — Kitty settings and a theme file.
- `alacritty/alacritty.toml` — Alacritty settings as used on the original machine.
- `fish/config.fish` — Fish startup config, preserving CachyOS defaults and the `cls` alias.
- `scripts/mysession` — helper commands for saving and checking Hyprflow sessions.

## Fish shell

The Fish config intentionally stays small:

```fish
source /usr/share/cachyos-fish-config/cachyos-config.fish
alias cls="clear"
```

CachyOS supplies the existing greeting and prompt integration. Pure's universal-variable preferences are stored in Fish's universal variable database on the original machine; they are not automatically reproduced by this config file.

## MySession

`scripts/mysession` is a Bash helper with three commands:

- `mysession save` — runs `hyprflow save --force` and sends a desktop notification when the save succeeds.
- `mysession status` — shows the newest JSON session file, the autosave timer, and the last service result.
- `mysession help` — prints usage.

It expects Hyprflow at `/usr/bin/hyprflow`, `notify-send`, and a user systemd unit named `hyprflow-autosave.timer` with service `hyprflow-autosave.service` for the status report. The unit files are not included here yet.

To try it from a local checkout, review the script and install it into your personal bin directory:

```sh
mkdir -p ~/.local/bin
install -Dm755 scripts/mysession ~/.local/bin/mysession
```

Make sure `~/.local/bin` is on your `PATH`. This repository does not install or enable systemd units automatically.

## Terminal theme notes

Kitty includes `themes/noctalia.conf`. Alacritty imports `~/.config/alacritty/themes/noctalia.toml`, but its current config also declares Nord colors directly. Review how your Alacritty version handles imported values before changing either source; the tracked config preserves the original settings rather than silently rewriting them.

Noctalia may generate terminal theme files from the active palette. Keep generated imports and directly declared colors in mind when troubleshooting theme mismatches.

## Before reusing

These are personal configuration files, not a universal installer. Review monitor settings, keybindings, program paths, dependencies, and other machine-specific choices before applying them to another system.

Never commit passwords, access tokens, private keys, or other credentials. Keep local backups before replacing working configuration files.
