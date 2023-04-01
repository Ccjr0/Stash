# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

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

