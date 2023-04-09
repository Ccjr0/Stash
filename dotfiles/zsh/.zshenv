## zshenv

#================
# GNOME-KEYRING |
#================
# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

#=========
# EXPORT |
#=========
export LANG=en_US.UTF-8

export OPENER="xdg-open"
export EDITOR="nvim"
export TERMINAL="st"
export VISUAL="nvim"
export PAGER="less"
export READER="zathura"
export COLORTERM="truecolor"
export GTK_USE_PORTAL=1

## --- Color less/man pages
export LESS=-R
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'

#======
# NNN |
#======
## --- NNN settings
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export NNN_OPTS="AQRde" ## Use binary options
export NNN_USE_EDITOR=1 ## Use default editor when opening files
# export NNN_SSHFS="sshfs -o follow_symlinks" ## Make sshfs follow symlinks on the remote
export NNN_TRASH=1 ## trash (needs trash-cli) instead of delete
export LC_COLLATE="C" ## Sort hidden files first
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$" # bsdtar can extract, list and archivemount can mount ISO 9660 cdrom images (extn: iso).
# set --export NNN_FIFO "/tmp/nnn.fifo" ## Set temp file

## --- NNN color setings
export NNN_COLORS="7777" ## Use a different color for each context
export NNN_FCOLORS="000075310000730000000000" ## Set colors for folders and files

#=========
# PYTHON |
#=========
# export PATH="$HOME/.local/bin:$PATH"

