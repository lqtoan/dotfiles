# PLUGINS
export ZSH='/home/toan/.config/zsh/.oh-my-zsh/'
plugins=(git zsh-autosuggestions zsh-completions)
source $ZSH/oh-my-zsh.sh

# PROMPT 
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '  (%b) %m%u%c '
zstyle 'vcs_info:*' enable git 

PROMPT='%{$fg[white]%}[%{$fg[yellow]%}%n%{$fg_bold[red]%}@$reset_color%{$fg[blue]%}%M %{$fg_bold[cyan]%}%~$reset_color%{$fg[white]%}]%$ %{$fg[magenta]%}${vcs_info_msg_0_}
%(?.%{$fg_bold[green]%} .%{$fg_bold[red]%} ) %{$reset_color%}'

# ALIAS 
# nvim aliases 
alias vim='nvim'
alias vi='nvim'
alias nv='nvim'
alias nvi='nvim'

#config aliases 
alias cfv='nvim ~/.config/nvim/init.vim'
alias zsh='nvim $ZDOTDIR/.zshrc'
alias qt='nvim ~/.config/qtile/config.py'
alias kt='nvim ~/.config/kitty/kitty.conf'
alias ktt='nvim ~/.config/kitty/theme.conf'
alias xpf='nvim ~/.xprofile'

#other alias 
alias pgg='ping 8.8.8.8'
alias pa='pavucontrol'
alias pacc='paccache -rk0'
alias pacs='sudo pacman -Suy'
alias yays='yay -Suy'
alias pacq='sudo pacman -Rns $(pacman -Qtdq)'
alias yayq='yay -Rns $(yay -Qtdq)'
alias spac='sudo pacman'


# colorscript aliases
alias clsl='colorscript -l'
alias clsr='colorscript -r'
alias cls='colorscript -e'
alias cls10='colorscript -e 10'

# modern unix
alias cl="clear"
alias cat='bat'
export BAT_THEME="base16"
alias ls="exa -lgh --icons --group-directories-first"
alias la="exa -lgha --icons --group-directories-first"

#KDE CONNECT
alias start='kdeconnect-cli -l'
alias share='kdeconnect-cli -n "Redmi Note 9S" --share'

#GIT
# alias gaa='git add --all'
# alias gs='git status'
# alias gcm='git commit -m'

# (cat ~/.cache/wal/sequences &)
# export GTK_IM_MODULE=ibus kitty 
# export XMODIFIER=@im-ibus kitty
# export QT_IM_MODULE=ibus kitty
# export GLFW_IM_MODULE=ibus
# pidof ibus-daemon > /dev/null || ibus-daemon -drx

#HISTORY
export HISTFILE=$ZDOTDIR/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

clear 
