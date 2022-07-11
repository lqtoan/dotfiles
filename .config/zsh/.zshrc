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

PROMPT='%{$fg[white]%}[%{$fg_bold[yellow]%}%n%{$fg[red]%}@$reset_color%{$fg[blue]%} %{$fg_bold[cyan]%}%~$reset_color%{$fg[white]%}]%$ %{$fg[magenta]%}${vcs_info_msg_0_}
%(?.%{$fg_bold[green]%} .%{$fg_bold[red]%} ) %{$reset_color%}'

# ALIAS 
# nvim aliases 
alias vim='nvim'
alias vi='nvim'
alias nv='nvim'
alias nvi='nvim'

#nvim aliases 
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfn='nvim ~/.config/nvim/colors/nord.vim'
alias zrc='nvim $ZDOTDIR/.zshrc'
alias zenv='nvim $ZDOTDIR/.zshenv'
alias qt='nvim ~/.config/qtile/config.py'
alias kt='nvim ~/.config/kitty/kitty.conf'
alias ktt='nvim ~/.config/kitty/theme.conf'
alias xpf='nvim ~/.xprofile'

#fzf alias
alias fzf='"$(fzf)"'

#other alias 
alias pgg='ping 8.8.8.8'
alias pa='pavucontrol'
alias pacc='paccache -rk0'
alias pacs='sudo pacman -Suy'
alias pacy='sudo pacman -Syyy'
alias yays='yay -Suy'
alias pacq='sudo pacman -Rns $(pacman -Qtdq)'
alias yayq='yay -Rns $(yay -Qtdq)'
alias pac='sudo pacman'

# colorscript aliases
alias clsl='colorscript -l'
alias clsr='colorscript -r'
alias cls='colorscript -e'
alias cls10='colorscript -e 10'

# modern unix
alias cl="clear"
# alias cat='bat'
export BAT_THEME="base16"
alias ls="exa -lgh --icons --group-directories-first"
alias la="exa -lgha --icons --group-directories-first"
alias htop='sudo htop --sort-key=PERCENT_MEM'
#KDE CONNECT
alias start='kdeconnect-cli -l'
alias share='kdeconnect-cli -n "Redmi Note 9S" --share'

# build and deploy Angular
alias bnd='npm run build && firebase deploy --only hosting'


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
# date
