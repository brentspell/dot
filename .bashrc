export LEIN_FAST_TRAMPOLINE=y
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export PS1="\[$(tput bold)\]\[\033[38;5;32m\]\h\[$(tput sgr0)\]:\\[\033[38;5;22m\]\w\[$(tput sgr0)\]> "
export PYTHONSTARTUP=~/.pythonrc.py
export HISTFILESIZE=
export HISTSIZE=
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export CLICOLOR=1

shopt -s histappend

alias octave='octave --no-gui'
alias ls='ls --color --group-directories-first'
alias ll='ls -lh'
alias lla='ls -lhA'
alias grep='grep --color'
alias watch='watch --color'

if [ -f /Applications/VLC.app/Contents/MacOS/VLC ]; then alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'; fi
