sudo sed -i s/archive.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo sed -i s/security.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo apt-get update

sudo apt-get install -y git python-dev python-pip
sudo pip install virtualenv
virtualenv ~/virtualenv
echo ". ~/virtualenv/bin/activate" >> ~/.bashrc
. ~/virtualenv/bin/activate
pip install ipython

#curl https://raw.githubusercontent.com/xinming90/vim/master/install.sh | sh -x
