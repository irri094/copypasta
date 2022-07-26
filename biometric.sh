# cpp compiler
apt update
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get install gcc-snapshot -y
apt update
apt -y install g++-9
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 2

# python compiler
apt-get -y install python3
apt update
apt-get -y install --only-upgrade python3

# add-apt-repository -y ppa:deadsnakes/ppa
# apt -y install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev
# wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
# tar xzf Python-3.7.3.tgz
# cd Python-3.7.3
# ./configure --enable-optimizations
# make altinstall
# update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.7 2
# update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.5 3
# update-alternatives --config python3

# java compiler

apt-get -y install default-jre
apt-get -y install default-jdk

# all ide

snap install intellij-idea-community --classic
snap install pycharm-community --classic
snap install --classic code

apt -y remove codeblocks
add-apt-repository -y ppa:damien-moore/codeblocks-stable
apt update
apt-get -y install codeblocks codeblocks-contrib

echo " done "
python3 --version
g++ --version
java -version
