# system
sudo sed -i s/archive.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo sed -i s/security.ubuntu.com/mirrors.yun-idc.com/g /etc/apt/sources.list
sudo apt-get update

# 
sudo apt-get install -y default-jdk htop git gcc htop
sudo apt-get install -y emacs zile


# mysql
sudo apt-get install -y mysql-server
sudo sed -i 's/^#general_log_file/general_log_file/' /etc/mysql/my.cnf
sudo sed -i 's/^#general_log/general_log/' my.cnf
sudo service mysql restart


# zsh
sudo apt-get install zsh
sudo chsh -s /usr/bin/zsh vagrant
echo '#' > ~/.zshrc
echo "export ZSH=$HOME/.oh-my-zsh" >> ~/.zshrc
echo 'ZSH_THEME="robbyrussell"' >> ~/.zshrc
echo "plugins=(git)" >> ~/.zshrc
echo 'export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"' >> ~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc


# python
sudo apt-get install -y python-dev python-pip
sudo pip install virtualenv -i http://pypi.douban.com/simple
virtualenv ~/virtualenv
echo ". ~/virtualenv/bin/activate" >> ~/.zshrc
echo 'alias tmysql="sudo tail -f /var/log/mysql/mysql.log"' >> ~/.zshrc
. ~/virtualenv/bin/activate
pip install ipython -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip install httpie -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip install pymysql -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip install sqlalchemy -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
