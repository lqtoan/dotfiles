# PROMPT 
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' formats '  (%b) %m%u%c '

PROMPT='%{$fg[white][%}%{$fg[green]%n%}%{$fg_bold[red]@%}$reset_color%{$fg[yellow]%M%} %{$fg_bold[cyan]%~%}$reset_color%{$fg[white]]%}$reset_color%# %{$fg[magenta]${vcs_info_msg_0_}%

%(?.%{$fg[green]%}➜.%{$fg_bold[red]%}➜) %{$reset_color%}'

# PLUGINS
export ZSH="/home/toan/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export TERMINAL='kitty'

# ALIAS 
# nvim aliases 
alias vim='nvim'
alias vi='nvim'
alias nv='nvim'
alias nvi='nvim'

#config aliases 
alias cfv='nvim ~/.config/nvim/init.vim'
alias zsh='nvim ~/.zshrc'
alias qt='nvim ~/.config/qtile/config.py'
alias kt='nvim ~/.config/kitty/kitty.conf'
alias ktt='nvim ~/.config/kitty/theme.conf'
alias xpf='nvim ~/.xprofile'
alias qb='nvim ~/.config/qutebrowser/config.py'
alias qbt='nvim ~/.config/qutebrowser/theme.py'

#other alias 
alias pgg='ping 8.8.8.8'
alias pa='pavucontrol'
alias pacc='paccache -rk0'
alias pacs='sudo pacman -Suy'
alias yays='yay -Suy'
alias pacq='sudo pacman -Rns $(pacman -Qtdq)'
alias yayq='yay -Rns $(yay -Qtdq)'

# colorscript aliases
alias clsl='colorscript -l'
alias clsr='colorscript -r'
alias cls10='colorscript -e 10'

# modern unix
alias cat='bat'
export BAT_THEME="base16"
alias ls="exa -lgh --icons --group-directories-first"
alias la="exa -lgha --icons --group-directories-first"

#KDE CONNECT
alias kde-start='kdeconnect-cli -l'
alias kde-share='kdeconnect-cli -n "Redmi Note 9S" --share'

# (cat ~/.cache/wal/sequences &)
export GTK_IM_MODULE=ibus
export XMODIFIER=@im-ibus
export QT_IM_MODULE=ibus
pidof ibus-daemon > /dev/null || ibus-daemon -drx
clear 

