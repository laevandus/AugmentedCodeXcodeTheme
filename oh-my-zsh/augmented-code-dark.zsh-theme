# Requires a Nerd Font or another font with Powerline glyphs.
setopt prompt_subst

augmented_code_dark_git_prompt() {
  local branch dirty
  branch=$(command git symbolic-ref --quiet --short HEAD 2>/dev/null || command git rev-parse --short HEAD 2>/dev/null) || return
  [[ -n $(command git status --porcelain 2>/dev/null) ]] && dirty=' ±'
  print -n "%{$bg[green]%}%{$fg[black]%}  ${branch}${dirty} %{$reset_color%}%{$fg[green]%}"
}

PROMPT='%(?.%{$fg[green]%}.%{$fg[red]%}✘ %? )%{$reset_color%}%{$bg[blue]%}%{$fg[black]%} %~ %{$reset_color%}%{$fg[blue]%}$(augmented_code_dark_git_prompt)%{$reset_color%} '
