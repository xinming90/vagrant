# system
sudo sed -i s/archive.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo sed -i s/security.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo apt-get update

# 
sudo apt-get install -y default-jdk htop git gcc htop
sudo apt-get install -y emacs zile


# python
sudo apt-get install -y python-dev python-pip
sudo pip install virtualenv -i http://pypi.douban.com/simple
virtualenv ~/virtualenv
echo ". ~/virtualenv/bin/activate" >> ~/.bashrc
echo 'alias tmysql="sudo tail -f /var/log/mysql/mysql.log"' >> ~/.bashrc
. ~/virtualenv/bin/activate
pip install ipython -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip install httpie -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

#curl https://raw.githubusercontent.com/xinming90/vim/master/install.sh | sh -x
