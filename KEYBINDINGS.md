# Keybindings I deliberately use (one layer per section; keep it short)

## keyd (system-wide)
- Caps: tap = Esc, hold = Ctrl
- Left Ctrl: F13 = toggle / focus the persistent terminal
- Esc is plain Esc again

## tmux (prefix C-b)
- prefix f: project switcher (fzf over zoxide) → one session per project
- prefix g: lazygit popup
- prefix C-s: synchronize panes
- prefix [ : copy mode (vi keys; v select, y copy to clipboard, / search)
- monitor-bell: a window name flagged in the status bar = an agent wants you

## zsh
- Ctrl-R: fuzzy history   Ctrl-T: fuzzy file   Alt-C: fuzzy cd   Tab: fzf-tab completion
- Up/Down: history by typed prefix   z <fragment>: jump to a directory   zi: interactive jump
- Ctrl-Left/Right: word movement   Ctrl-W: delete word back (stops at /)

## git aliases
ga gb gc gcam gco gswc grs gl gp glol glg (see dot_config/zsh/aliases.zsh)
