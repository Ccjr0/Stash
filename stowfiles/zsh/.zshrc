# zshrc

#===========
#  PROMPT  |
#===========
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

PROMPT=' %F{blue}%B%~%b%f %F{gray}%B>>%f%b'
PROMPT+="%B\$vcs_info_msg_0_%b "

#============
#  OPTIONS  |
#============
setopt autocd extendedglob nomatch histignorealldups

## --- History
HISTFILE=$HOME/.histfile
HISTSIZE=50000
SAVEHIST=50000

#===============
#  COMPLETION  |
#===============
zstyle :compinstall filename '/home/ccjr/.zshrc'
autoload -Uz compinit
compinit

## --- For enabling auto-completion of privileged environments in privileged commands
zstyle ':completion::complete:*' gain-privileges 1

## --- Auto complete with case insensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                          # automatically find new executables in path

## --- Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#============
#  ALIASES  |
#============
alias sudo='nocorrect sudo -E '     # 'sudo' alias fix

alias cp="cp -i"        # Confirm before overwriting something
alias rm='rm -i'        # Confirm before removing something
alias df='df -h'        # Human-readable sizes
alias free='free -m'    # Show sizes in MB
alias mkdir='mkdir -p'  # Make parent dirs as needed

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -FHh --color=auto --group-directories-first'
alias la='ls -AFHh --color=auto --group-directories-first'
alias ll='ls -AFHhl --color=auto --group-directories-first'
alias vi='nvim'
alias vim='nvim'
alias ytdlp='yt-dlp --embed-metadata'
alias ytdlpa='yt-dlp --embed-metadata -x --audio-format mp3'
alias gitup='git add . && git commit && git push'
alias wttr='curl wttr.in'
alias todo='cat ~/Documents/notes/TODO.md | cowsay'

# alias n3='nnn'
# alias em='emacs'
# alias fm='vifm'
# alias xup='xrdb ~/.Xresources'
# alias ls='lsd --group-dirs=first'
# alias la='lsd -A --group-dirs=first'
# alias ll='lsd -AlF --group-dirs=first'
# alias ls='exa --icons --group-directories-first'
# alias la='exa --icons -a --group-directories-first'
# alias ll='exa --icons -alF --group-directories-first'
# alias ytdl='youtube-dl'
# alias ytdla='youtube-dl --add-metadata -x --audio-format mp3'

#============
#  PLUGINS  |
#============
## --- vi-mode
source ~/.config/zsh/vi-mode/vi-mode.zsh

## --- zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^F' autosuggest-accept

## --- zsh-syntax-highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
