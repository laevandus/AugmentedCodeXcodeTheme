# Requires a Nerd Font or another font with Powerline glyphs.
setopt prompt_subst

augmented_code_light_git_prompt() {
  local branch dirty
  branch=$(command git symbolic-ref --quiet --short HEAD 2>/dev/null || command git rev-parse --short HEAD 2>/dev/null) || return
  [[ -n $(command git status --porcelain 2>/dev/null) ]] && dirty=' ±'
  print -n "%{$bg[green]%}%F{#F6F0E0}  ${branch}${dirty} %{$reset_color%}%{$fg[green]%}"
}

PROMPT='%(?.%{$fg[green]%}.%{$fg[red]%}✘ %? )%{$reset_color%}%{$bg[blue]%}%F{#F6F0E0} %~ %{$reset_color%}%{$fg[blue]%}$(augmented_code_light_git_prompt)%{$reset_color%} '
