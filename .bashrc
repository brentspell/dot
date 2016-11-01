export LEIN_FAST_TRAMPOLINE=y
export IP=`ifconfig | grep 'inet ' | grep -v 127\.0\.0\.1 | sed -r 's|[^0-9.]*([^ ]*) .*|\1|' | tail -n 1`
export PS1="\\w> "
export PYTHONSTARTUP=~/.pythonrc.py

# cuda variables
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias tar='gtar'
alias octave='octave --no-gui'
alias ll='ls -l'
alias lla='ls -lA'
