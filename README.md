# Augmented Code Dark

A unified dark theme for Xcode, Ghostty, Zed, Oh My Zsh, and Starship. It is
derived from the Xcode **Augmented Code (Dark)** palette.

![Augmented Code Dark theme example](Example.png)

## Install

```sh
./install.sh
```

The installer copies theme files only; it does not change application or shell
settings.

## Activate

- **Xcode:** Relaunch Xcode, then select **Augmented Code (Dark)** in Settings
  > Themes.
- **Ghostty:** Add this line to your Ghostty configuration and reload with
  `Cmd-Shift-,`:

  ```ini
  theme = Augmented Code Dark
  ```

- **Zed:** Open the Theme Selector with `Cmd-K`, then `Cmd-T`, and select
  **Augmented Code Dark**.
- **Starship:** Add this line to `~/.zshrc`, then start a new shell:

  ```sh
  eval "$(starship init zsh)"
  ```

- **Oh My Zsh:** Set this in `~/.zshrc`, then start a new shell:

  ```sh
  ZSH_THEME="augmented-code-dark"
  ```

  The prompt uses Powerline glyphs, so select a Nerd Font or another
  Powerline-capable font in your terminal.

## Minimal Ghostty configuration

```ini
font-family = "SF Mono"
font-size = 13
scrollback-limit = 10000000
theme = Augmented Code Dark
```
