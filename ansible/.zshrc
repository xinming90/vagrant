export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)

export GOROOT=$HOME/go
export GOPATH=$HOME/work
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$GOROOT/bin:$GOPATH/bin:/opt/bin"
source $ZSH/oh-my-zsh.sh
alias e="/opt/app/emacs/bin/emacs"
source ~/virtualenv/bin/activate



# docker
export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=/home/vagrant/docker/certs
export DOCKER_TLS_VERIFY=1
# export NO_PROXY=192.168.59.103
