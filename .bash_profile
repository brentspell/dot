export PATH=/usr/local/opt/coreutils/libexec/gnubin:~/bin:$PATH
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export HISTCONTROL=ignoredups
export GPG_TTY=$(tty)
export R_HOME=/Library/Frameworks/R.framework/Resources

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.102:2376"
export DOCKER_CERT_PATH="/Users/bspell/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias tar='gtar'
alias octave='octave --no-gui'
alias ll='ls -l'
alias lla='ls -lA'
