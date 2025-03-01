# zshenv

# === VARIABLES ===

export LANG=en_US.UTF-8
export PATH="${PATH}:/home/ccjr/bin"
export PATH="$HOME/.local/bin:$PATH"

export SHELL=/bin/zsh
export OPENER="xdg-open"
export EDITOR="nvim"
export TERMINAL="alacritty"
export VISUAL="nvim"
export PAGER="less"
export READER="zathura"
export BROWSER="firefox"
export COLORTERM="truecolor"
export GTK_USE_PORTAL=1

# Color less/man pages

export LESS=-R
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'

# Password directory (pass)

export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

# Gnome-keyring

# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

# === NNN ===

# Settings

# export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
# export NNN_OPTS="AQRd" ## Use binary options
# export NNN_USE_EDITOR=1 ## Use default editor when opening files
# export NNN_SSHFS="sshfs -o follow_symlinks" ## Make sshfs follow symlinks on the remote
# export NNN_TRASH=1 ## trash (needs trash-cli) instead of delete
# export LC_COLLATE="C" ## Sort hidden files first
# export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$" # bsdtar can extract, list and archivemount can mount ISO 9660 cdrom images (extn: iso).
# set --export NNN_FIFO "/tmp/nnn.fifo" ## Set temp file

# Colors

# export NNN_COLORS="7777" # Context colors
# BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
# export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

