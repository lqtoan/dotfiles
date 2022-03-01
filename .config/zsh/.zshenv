export EDITOR="nvim"
export TERMINAL="kitty"

# Some default config directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# X11
# export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

# Others
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
# export IDEA_JDK=/opt/openjdk-bin-11
export _JAVA_AWT_WM_NONREPARENTING=1

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --color 'fg:#979eab,query:#979eab,gutter:#3b4252,pointer:#e5e9f0,info:#ebcb8b,fg+:#e5e9f0,bg:#2e3440,bg+:#5e81ac,hl:#a3be8c,hl+:#a3be8c,border:#5e81ac'"
export FZF_DEFAULT_COMMAND="find -L"

export NODE_OPTIONS="--max-old-space-size=8192"
export ASPNETCORE_ENVIRONMENT=Development
export DOTNET_ROOT=/opt/dotnet
export MSBuildSDKsPath=$( echo /usr/share/dotnet/sdk/3.*/Sdks )
