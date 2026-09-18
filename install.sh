#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
ghostty_dir="$HOME/.config/ghostty/themes"
config_dir="$HOME/.config"
zed_dir="$HOME/.config/zed/themes"
zsh_custom=${ZSH_CUSTOM:-"$HOME/.oh-my-zsh/custom"}
zsh_dir="$zsh_custom/themes"
xcode_dir="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"

install -d "$config_dir" "$ghostty_dir" "$zed_dir" "$zsh_dir" "$xcode_dir"
install -m 644 "$root/ghostty/Augmented Code Dark" "$ghostty_dir/Augmented Code Dark"
install -m 644 "$root/starship/starship.toml" "$HOME/.config/starship.toml"
install -m 644 "$root/zed/augmented-code-dark.json" "$zed_dir/augmented-code-dark.json"
install -m 644 "$root/oh-my-zsh/augmented-code-dark.zsh-theme" "$zsh_dir/augmented-code-dark.zsh-theme"
install -m 644 "$root/Augmented Code (Dark).xccolortheme" "$xcode_dir/Augmented Code (Dark).xccolortheme"
install -m 644 "$root/Augmented Code (Dark).xcworkspacecolortheme" "$xcode_dir/Augmented Code (Dark).xcworkspacecolortheme"

cat <<EOF
Installed Augmented Code Dark.

Xcode: relaunch Xcode, then select “Augmented Code (Dark)” in Settings > Themes.
Ghostty: add this line to your Ghostty config, then reload with Cmd-Shift-,:
  theme = Augmented Code Dark
Starship: add this line to ~/.zshrc, then start a new shell:
  eval "\$(starship init zsh)"
Zed: choose “Augmented Code Dark” with Theme Selector (Cmd-K, Cmd-T).
Oh My Zsh: set ZSH_THEME="augmented-code-dark" in ~/.zshrc, then start a new shell.

The Oh My Zsh prompt needs a Nerd Font or Powerline-capable font for its glyphs.
EOF
