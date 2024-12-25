# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="wezterm"
export TERMINAL_PROG="wezterm"
export BROWSER="librewolf"

# ~/ Clean-up:
export SHELLDOTDIR="$XDG_CONFIG_HOME/shell"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export HISTFILE="$XDG_DATA_HOME/zsh_history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
# export UNISON="$XDG_DATA_HOME/unison"

# Other program settings:
# export DICS="/usr/share/stardict/dic/"
# export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
# export LESS="R" # TODO: IDK
export MOZ_USE_XINPUT2=1                  # Mozilla smooth scrolling/touchpads.
# export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
# export QT_QPA_PLATFORMTHEME="gtk2"        # Have QT use gtk2 theme.

# [ ! -f "$XDG_CONFIG_HOME/shell/shortcutrc" ] && setsid -f shortcuts >/dev/null 2>&1
