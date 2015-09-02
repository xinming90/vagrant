export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)

export GOROOT=$HOME/go
export GOPATH=$HOME/work
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$GOROOT/bin"
source $ZSH/oh-my-zsh.sh
alias e="/opt/app/emacs/bin/emacs"
source ~/virtualenv/bin/activate

