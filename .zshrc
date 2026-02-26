# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ~/.zshrc

# If not running interactively, stop here
[[ $- != *i* ]] && return

# Enable completion and common shell options
autoload -Uz compinit
compinit
#setopt autocd extendedglob nomatch


# ===============================
# System and Environment Paths
# ===============================
export PATH="/home/ryskowalski/.cargo/bin:$PATH"
export PATH="$PATH:/home/ryskowalski/.local/bin"
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export ANDROID_HOME="$HOME/Android"

# ===============================
# System Management
# ===============================
alias sreboot='systemctl soft-reboot'
alias sshd='/usr/bin/sshd'

# ===============================
# Package Management
# ===============================
alias pac='sudo pacman'
alias pacu='sudo pacman -Syu'
alias pacs='sudo pacman -S'
alias yayu='yay -Syu'

# ===============================
# Terminal and Display Utilities
# ===============================
alias neofetch!='/usr/bin/neofetch'
alias neofetch='echo "fastfetch you idiot" && fastfetch'
alias ff='fastfetch'
alias clock='tty-clock -s -S -c'
alias snow='snowmachine tree --star=classic --snow-color=rainbow'
alias nmatrix='neo-matrix -d 1.5 -f 165 --shortpct 95 --glitchpct 10 -F --shadingmode=1'
alias isl='python ~/infinite_sl.py -ed3'
alias text='figlet'


# ===============================
# File and Directory Management
# ===============================
alias e='spf'
alias ls='eza --icons -a --group-directories-first'
alias lst='eza --icons -a --group-directories-first -T'
alias untar='tar -xvzf'

# ===============================
# Tools and Utilities
# ===============================
alias calc='kalker -i ~/.config/kalker/predef'
alias sound='ffplay -nodisp -autoexit'
alias img='qimgv'
alias db='termdbms -p'
alias grep='grep --color=auto'
alias gc='git commit -a'
alias gp='git push'
alias gu='git pull'

# ===============================
# Development and Programming
# ===============================
alias v='nvim'
alias v.='nvim .'
alias .v='nvim .'

alias py='python'
alias py13='python3.13'
alias venv='source .venv/bin/activate'

alias zrc='source ~/.zshrc'

alias vass_interpreter='python /home/ryskowalski/projects/vass/interpreter.py'

alias jb="javac"
alias ja="java"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export PATH="$JAVA_HOME/bin:$PATH"


# ===============================
# Games and Media
# ===============================
alias music='yt-dlp --audio-quality 0 -t mp3'
alias TerrariaServer='/home/ryskowalski/.local/share/Steam/steamapps/common/Terraria/TerrariaServer'

# ===============================
# Miscellaneous
# ===============================
alias ckear='clear'
alias cleasr='clear'

alias gpu_control='echo use lact'

# ---- Git branch function ----
git_branch() {
    local branch
    branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [[ -n "$branch" && "$branch" != "main" && "$branch" != "master" ]]; then
        echo "%F{#CECB00}($branch)%f "
    fi
}

# foot terminal
precmd() {
    print -Pn "\e]133;A\e\\"
}

# ---- Prompt ----
PROMPT='%F{#32fc0f}%n@%m%f:%F{#1572CB}%~%f$(git_branch)$(if [[ $EUID == 0 ]]; then echo "%F{#FF0000}#"; else echo "%F{#0DCDCD}$"; fi)%f '


# ---- zoxide ----
# zoxide integration for Zsh
eval "$(zoxide init zsh)"


# pnpm
export PNPM_HOME="/home/ryskowalski/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
