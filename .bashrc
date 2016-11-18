export LEIN_FAST_TRAMPOLINE=y
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export PS1="\h:\\w> "
export PYTHONSTARTUP=~/.pythonrc.py
export HISTFILESIZE=
export HISTSIZE=
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

shopt -s histappend

alias octave='octave --no-gui'
alias ll='ls -l'
alias lla='ls -lA'
