# PROMPT='%F{blue}%n%f@%F{white}%m%f %F{blue}%B%~%b%f '

# The following lines were added by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ccjr/.zshrc'
# bindkey -v
autoload -Uz compinit
compinit
# End of lines added by compinstall

#---------
# COMMON |
#---------
# --- For enabling autocompletion of privileged environments in privileged commands (e.g. if you complete a command starting with sudo, completion scripts will also try to determine your completions with sudo), include:
zstyle ':completion::complete:*' gain-privileges 1

# --- Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt histignorealldups

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path

# --- Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#----------
# SOURCES |
#----------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/gitstatus/gitstatus.prompt.zsh
source ~/.zsh/vi-mode/vi-mode.zsh

#----------
# ALIASES |
#----------
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
alias fm='vifm'
alias mp='ncmpcpp'

# --- Convenience
alias xup='xrdb ~/.Xresources'
alias gitup='git add . && git commit && git push'
alias syu='sudo pacman -Syu && yay -Syu'
alias rns='sudo pacman -Rns'
alias ytmp3='youtube-dl -x --audio-format mp3'

# --- 'sudo' alias fix
alias sudo='nocorrect sudo -E '

# --- Unused aliases
# alias ls='exa --icons --group-directories-first'
# alias la='exa --icons -a --group-directories-first'
# alias ll='exa --icons -alF --group-directories-first'
# alias n='nnn -A -e'
# alias sn='sudo nnn -A -e'
# alias zdup='sudo zypper dup'
# alias dnfup='sudo dnf update'
# alias aptup='sudo apt update && sudo apt upgrade'
# alias aptremove='sudo apt autoremove'


# --- Typo aliases
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

#---------
# EXPORT |
#---------
export EDITOR="nvim"
export VISUAL="nvim"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export GTK_USE_PORTAL=1

# --- Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

#------
# NNN |
#------
# export NNN_PLUG=
# export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
# export NNN_COLORS="2136"                           # use a different color for each context
# export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
# export LC_COLLATE="C"                              # Sort hidden files first (NNN)
# export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$" # bsdtar can extract, list and archivemount can mount ISO 9660 cdrom images (extn: iso).
# export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
# set --export NNN_FIFO "/tmp/nnn.fifo"

#---------
# PYTHON |
#---------
# export PATH="$HOME/.local/bin:$PATH"
