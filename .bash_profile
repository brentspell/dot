export PATH=/usr/local/opt/coreutils/libexec/gnubin:~/bin:$PATH
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export HISTCONTROL=ignoredups
export GPG_TTY=$(tty)

export ENV=~/.bashrc
if [ -f $ENV ]; then . $ENV; fi

if [ -d ~/.pyenv/bin ]; then
   export PYENV_ROOT=~/.pyenv
   export PATH=$PYENV_ROOT/bin:$PATH
fi

if type pyenv > /dev/null 2>&1; then
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
fi

if type keychain > /dev/null 2>&1; then
   keychain
fi

if [ -f ~/.keychain/$HOSTNAME-sh ]; then
   source ~/.keychain/$HOSTNAME-sh;
fi
