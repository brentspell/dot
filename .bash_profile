export PATH=/usr/local/opt/coreutils/libexec/gnubin:~/bin:$PATH
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export HISTCONTROL=ignoredups
export GPG_TTY=$(tty)
export R_HOME=/Library/Frameworks/R.framework/Resources

export ENV=~/.bashrc
if [ -f $ENV ]; then . $ENV; fi

if [ -f ~/.keychain/$HOSTNAME-sh ]; then source ~/.keychain/$HOSTNAME-sh; fi

if type pyenv > /dev/null 2>&1; then
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
fi
