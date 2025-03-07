# zshrc

# ====== OPTIONS ======

setopt autocd extendedglob nomatch histignorealldups
# precmd() { print -Pn "\e]0;%n@%m: %~\a" }

# History

HISTFILE=$HOME/.histfile
HISTSIZE=80000
SAVEHIST=80000
# export HISTIGNORE="ls:bg:fg:exit:clear:lf:neofetch"
# export HISTIGNORE_PATTERN="(ls|cd|pwd|tree|exit|clear|lf|neofetch)"

# ====== PROMPT ======

# SSH condition

if [[ -n "$SSH_CLIENT" || -n "$SSH_TTY" ]]; then
    SSH_PROMPT="%F{3} %n@%m%f"
else
    SSH_PROMPT=""
fi

# Version control

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:*' enable git

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!' # signify new files with a bang
    fi
}

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})%{$reset_color%}"

# Prompt

PROMPT=" %F{blue}%B%~%b%f %F{gray}%B>>%f%b"
PROMPT+="%B\$vcs_info_msg_0_%b "
RPROMPT=${SSH_PROMPT}

# ====== ALIASES ======

alias sudo='nocorrect sudo -E '     # 'sudo' alias fix

alias cp="cp -i"            # Confirm before overwriting something
alias rm='rm -i'            # Confirm before removing something
alias df='df -h'            # Human-readable sizes
alias free='free -m'        # Show sizes in MB
alias mkdir='mkdir -p'      # Make parent dirs as needed
alias ls='ls -FHh --color=auto --group-directories-first'
alias la='ls -AFHh --color=auto --group-directories-first'
alias ll='ls -AFHhl --color=auto --group-directories-first'
alias v='nvim' vi='nvim' vim='nvim'
alias grep='rg'
alias wttr='curl wttr.in'
alias gitup='git add . && git commit && git push'
alias ytdlp='yt-dlp -f "((bv*[fps>30]/bv*)[height<=1080]/(wv*[fps>30]/wv*)) + ba / (b[fps>30]/b)[height<=1080]/(w[fps>30]/w)" --embed-subs --embed-metadata'
alias ytdlpa='yt-dlp --embed-thumbnail --embed-metadata -x --audio-format mp3'

# alias ytdlp2='yt-dlp --format "bv*[height<=1080]+ba/b" --embed-subs --embed-thumbnail --embed-metadata'
# alias ytdl='youtube-dl'
# alias ytdla='youtube-dl --add-metadata -x --audio-format mp3'

# ====== COMPLETION ======

zstyle :compinstall filename '/home/ccjr/.zshrc'
autoload -Uz compinit
compinit

# For enabling auto-completion of privileged environments in privileged commands

zstyle ':completion::complete:*' gain-privileges 1

# Auto complete with case insensitivity

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                          # automatically find new executables in path

# Speed up completions

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# ====== PLUGINS ======

# vi-mode

source ~/.config/zsh/vi-mode/vi-mode.zsh

# zsh-autosuggestions

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^F' autosuggest-accept
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting

source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

