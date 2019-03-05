export PATH=/usr/local/opt/coreutils/libexec/gnubin:~/bin:~/.mix/escripts:/usr/local/cuda/bin:$PATH
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

if type hadoop > /dev/null 2>&1; then
   export HADOOP_LIBEXEC_DIR="$HADOOP_HOME"/libexec
   export SPARK_DIST_CLASSPATH=$(hadoop classpath)
fi

if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
      . /usr/local/etc/profile.d/autojump.sh
fi

export PATH="$HOME/.cargo/bin:$PATH"
