# COMPILERS
apt update

add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt -y install g++-10
# update-alternatives --install <link> <name> <path> <priority>
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10


add-apt-repository -y ppa:deadsnakes/ppa
apt-get -y install python3
apt-get -y install --only-upgrade python3

#update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 10

apt-get -y install default-jre
apt-get -y install default-jdk


# IDE
FILE=/usr/bin/intellij-idea-community
if [ -f "$FILE" ]; then
	echo -e "\n\n------------------\nintellij ase already but maybe old version\n------------------\n\n"
else
	snap install intellij-idea-community --classic	
fi
FILE=/usr/bin/pycharm-community
if [ -f "$FILE" ]; then
	echo -e "\n\n------------------\npycharm ase already but maybe old version\n------------------\n\n"
else
	snap install pycharm-community --classic
fi

apt-get -y install codeblocks-contrib
