# MCheck
*s1l3nt78*

# Functions

  MCheck is used to check MikroTik Routers for winbox_auth_bypass_creds_disclosure & routeros_jailbreak
    -If routersploit module (in development) confirms the Mikrotik device is vulnerable it parses the credentials into the miko.py script.

  The main function, is to spawn a quick ssh session on the compromised machine in order to enumerate the network AP name from IP
    -Once the Network AP Name has been found the attacker can use the IP and login credentials to work with
     Mikrotik Routers config from a web-session.
    
# USAGE

  -The user must create the 'scripts/tiks.txt' list with MikroTik Router IP's.
  -Easiest way to do this is using bulk nMap scrapes or Shodan.
    Once the attacker has a specific netblock <eg. 111.69.145.1/24>, the best way to create the list is using Microsoft Excel
    As you need to fill in the first block (111.69.145.1), then you can drag the coloum to quickly fill the IP's in the colom.
    Then copy the entire block into the 'scripts/tiks.txt' file.
    
# TODO

  Incorporation of routersploit to do automatic vuln checks for the MikroTik Router firmware.
  For now manual checks must be done by user.
  
