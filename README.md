# Traveler's Sanctuary

*A warm, golden-brown desktop setup inspired by the Traveler's journey.*

Traveler's Sanctuary is a personal CachyOS desktop configuration built around Hyprland, Noctalia, and a cozy bronze-and-gold palette. The goal is a consistent look without hiding the individual tools or making the setup difficult to understand.

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

The palette source is [`noctalia/palettes/Midnight Golden Journey.json`](noctalia/palettes/Midnight%20Golden%20Journey.json).

## Repository layout

- `hypr/` — Hyprland configuration split into focused Lua modules.
- `kitty/` — Kitty configuration and Noctalia theme import.
- `noctalia/palettes/` — the custom Midnight Golden Journey palette.
- `fish/` — the current Fish startup configuration.

## Fish shell

The tracked Fish config sources CachyOS's supplied defaults, then keeps the small personal `cls` alias:

```fish
source /usr/share/cachyos-fish-config/cachyos-config.fish
alias cls="clear"
```

The CachyOS configuration provides the existing greeting and prompt integration. The custom Pure prompt preferences are managed separately as Fish universal variables on the original machine, so they are not silently rewritten by this file.

## Notes before using these dotfiles

These are personal configuration files, not a one-command installer. Review each file and adapt machine-specific paths, monitor settings, keybindings, programs, and dependencies before applying it to another system.

Noctalia can generate terminal theme files from its active palette. When changing terminal colors, check the generated theme imports as well as any colors defined directly in a terminal config, so two sources do not fight each other.

## Safety

- Never commit passwords, access tokens, private keys, or other credentials.
- Review files for machine-specific details before publishing or reusing them.
- Keep local backups before replacing working configuration files.
