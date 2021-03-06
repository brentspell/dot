export TERM="${TERM:-xterm-256color}"
export LEIN_FAST_TRAMPOLINE=y
export PS1="\[$(tput bold)\]\[\033[38;5;32m\]\h\[$(tput sgr0)\]:\\[\033[38;5;22m\]\w\[$(tput sgr0)\]> "
export PYTHONSTARTUP=~/.pythonrc.py
export HISTFILESIZE=
export HISTSIZE=
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export CLICOLOR=1
export PYSPARK_DRIVER_PYTHON='jupyter'
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
export TF_CPP_MIN_LOG_LEVEL=3
export GOOGLE_APPLICATION_CREDENTIALS=~/.pylon/terraform-admin.json

shopt -s histappend

alias octave='octave --no-gui'
alias clear="clear && printf '\e[3J'"
alias ls='ls --color --group-directories-first'
alias ll='ls -lh'
alias lla='ls -lhA'
alias lsd='ls -d'
alias du='du -h'
alias df='df -h'
alias grep='grep --color'
alias watch='watch --color'
alias pytest='python -m pytest'
alias ptw='PYTHONPATH=. ptw'
alias make='make -s'
alias avp='aws-vault exec PYLON_USER -- '
alias eb='~/.pyenv/versions/awsebcli/bin/eb'
