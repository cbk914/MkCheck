#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
LGRY='\033[0;37m'
INV='\e[7m'
BRED='\033[1;31m'
UPURPLE='\033[4;35m'
UBLUE='\033[4;34m'
URED='\033[4;31m'

# Root Check
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}This script must be run as root${NC}" 
   exit 1
fi
apt-get install figlet python3.7 python3-pip 
# MCheck install
if [[ -d /opt/MkCheck ]]; then
	sleep 1
	echo -e "${YLW}MkCheck is installed in the right place${NC}"
else
	echo -e "${W}Moving MkCheck to the correct directory${NC}"
	pwd && cd ..
	sudo mv MkCheck -t /opt
	sudo apt-get remove python3-pip -y
	cd /opt/
	sudo wget http://ftp.us.debian.org/debian/pool/main/p/python-pip/python-pip_18.1-5_all.deb
	sudo wget http://ftp.us.debian.org/debian/pool/main/p/python-pip/python-pip-whl_18.1-5_all.deb
	sudo dpkg -i python-pip-whl_18.1-5_all.deb
	sudo dpkg -i python-pip_18.1-5_all.deb
	sudo rm python-* 
	sudo python2 -m pip install paramiko
fi

# Routersploit Setup
cd /root/
echo -e "${LP}"
figlet -f mini "RoutersSploit"
echo -e "${NC}"
if [[ -d "/root/routersploit" ]]; then
	echo -e "${W}Routersploit is already installed${NC}"
	sleep 1
else
	echo -e "${YLW}Installing RouterSploit${NC}"
	git clone https://github.com/threat9/routersploit.git
	cd routersploit
	sudo apt-get install python3-pip
	python3.7 -m pip install -r requirements.txt
	python3.7 -m pip install -r requirements-dev.txt
fi

cd /opt/MkCheck
chmod +x mkcheck
# Path Options
echo -e "${YLW}Would you like to add MkCheck to path to run it from anywhere?${LBBLUE}(y/n)${NC}"
read LOPT
if [[ ${LOPT} == "y" ]]; then
	sudo cp mkcheck -t /usr/sbin
	sudo chown $USER:$USER /usr/sbin/mkcheck
else
	echo -e "${RED}MkCheck installed${NC}"
fi
