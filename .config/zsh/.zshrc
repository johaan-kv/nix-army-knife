# zshrc file

autoload -U colors && colors
PS1='%B%F{green}%n%F{blue}@%F{cyan}%M%F{blue}:%~ %(?.%F{green}.%F{red})%#%f%b '
RPROMPT='%(?..%F{red}[%?]%f)%1(j.%F{green}[%j].)%f '
mkdir -p ~/.config/zsh
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt inc_append_history
set -o emacs
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt correct
# unsetopt PROMPT_SP 2>/dev/null

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# _comp_options+=(globdots)

for i in $SHELLDOTDIR/auto/*; do
  [ -f $i ] && . $i
done

## keybinds
bindkey -s '^h' '^ucd ~\n'
bindkey -s '^o' '^uyz\n'
bindkey -s '^g' '^uzi\n'

## syntax highlighting
zsh_hightlight=/opt/plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -r "$zsh_hightlight" ] && source $zsh_hightlight
