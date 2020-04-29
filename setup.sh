#!/bin/bash
RED='\033[0;31m'

# Root Check
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}This script must be run as root${NC}" 
   exit 1
fi
# MCheck install
if [[ -d /opt/MCheck ]]; then
	sleep 1
	echo -e "${YLW}MCheck is installed in the right place${NC}"
else
	echo -e "${W}Moving MCheck to the correct directory${NC}"
	pwd && cd ..
	sudo mv MCheck -t /opt
	sudo pip install paramiko
fi

# Routersploit Setup
cd /root/
echo -e "${LP}"
figlet -f mini "MCheck Setup"
echo -e "${NC}"
if [[ -d "/root/routersploit" ]]; then
	sleep 1
else
	git clone https://github.com/threat9/routersploit.git
	cd routersploit
	python3.7 -m pip install -r requirements.txt
	python3.7 -m pip install -r requirements-dev.txt
fi

cd /opt/MCheck
chmod +x mcheck
