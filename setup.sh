#!/bin/bash

# Root Check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
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
