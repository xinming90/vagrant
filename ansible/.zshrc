export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)

export GOROOT=$HOME/go
export GOPATH=$HOME/work
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$GOROOT/bin:$GOPATH/bin:/opt/bin"
source $ZSH/oh-my-zsh.sh

#
for file in `ls ~/.zshrc_*`; do
    source $file
done


# ming
export DOCKER_HOST=tcp://192.168.1.10:2375
export DOCKER_HOST=unix://
export LD_LIBRARY_PATH=/opt/python/3.6/lib
cd ~/gitlab/falcon
alias e=/opt/emacs/25/bin/emacs
alias pydoc="python -m pydoc"
source ~/default/bin/activate
