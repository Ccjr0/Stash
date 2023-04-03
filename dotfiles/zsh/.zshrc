# === ZSHRC === #

# PROMPT='%F{blue}%n%f@%F{white}%m%f %F{blue}%B%~%b%f '

## --- The following lines were added by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch
## --- End of lines configured by zsh-newuser-install

## --- The following lines were added by compinstall
zstyle :compinstall filename '/home/ccjr/.zshrc'
# bindkey -v
autoload -Uz compinit
compinit
## --- End of lines added by compinstall

#=========
# COMMON |
#=========
## --- For enabling autocompletion of privileged environments in privileged commands (e.g. if you complete a command starting with sudo, completion scripts will also try to determine your completions with sudo), include:
zstyle ':completion::complete:*' gain-privileges 1

## --- Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt histignorealldups

## --- Case insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

## --- Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

## --- automatically find new executables in path
zstyle ':completion:*' rehash true

## --- Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#==========
# SOURCES |
#==========
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/gitstatus/gitstatus.prompt.zsh
source ~/.config/zsh/vi-mode/vi-mode.zsh

#==========
# ALIASES |
#==========
## --- 'sudo' alias fix
alias sudo='nocorrect sudo -E '

alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias ll='ls -alF --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias mkdir='mkdir -p'
alias vim='nvim'
# alias fm='vifm'
alias mp='ncmpcpp'

## --- Convenience
alias gitup='git add . && git commit && git push'
alias syu='yay -Syu'
alias rns='sudo pacman -Rns'
alias ytmp3='youtube-dl -x --audio-format mp3'
# alias xup='xrdb ~/.Xresources'
# alias ls='exa --icons --group-directories-first'
# alias la='exa --icons -a --group-directories-first'
# alias ll='exa --icons -alF --group-directories-first'
alias n3='nnn -A -Q -R -e -r'
alias sn3='sudo nnn -A -Q -R -e -r'
# alias zdup='sudo zypper dup'
# alias dnfup='sudo dnf update'
# alias aptup='sudo apt update && sudo apt upgrade'
# alias aptremove='sudo apt autoremove'

## --- Typo aliases
# alias claer='clear'
# alias cealr='clear'
# alias clare='clear'
# alias clea='clear'
# alias cler='clear'
# alias clar='clear'
# alias celar='clear'
# alias cela='clear'
# alias clera='clear'
# alias eixt='exit'
# alias exti='exit'
# alias usdo='sudo'
# alias sduo='sudo'
# alias sdou='sudo'
# alias sduo='sudo'
# alias pamcn='pacman'
# alias pamcan='pacman'
# alias pacmn='pacman'
# alias pacma='pacman'
# alias noefetch='neofetch'
# alias rebot='reboot'
# alias reboto='reboot'

