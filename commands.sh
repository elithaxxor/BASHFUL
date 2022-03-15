#!/bin/sh

#  commands.sh
#  
#
#  Created by a-robot on 3/14/22.
#  



## basics
iwevent -- to get wireless events
iwgetid - reports curretn essid / ap


OPEN SSL ENCRYPTION
Private key
openssl genrsa -aes-256-cbc -out macair.key 4096
openssl genrsa -aes-256-cbc -out macair.key 4096
# Public key
openssl rsa -in frank.key -pubout > frankpublic.key
# verification file
### making signed encryption
openssl dgst -sha256 -sign macair.key -out signer verifcation.enc
# to sign
openssl base64 -in signer -out verifcation.enc


##### INTRUSION DETECTION #### 
# Sparrow Wifi # --> 
https://github.com/ghostop14/sparrow-wifi
gpsd -D 2 -N /dev/ttyUSB0 # WARDRIVING --> graphs 
sudo ./sparrow-wifi.py 


### KISMET - FIND ALL THE NETWORK HOST, AND DEVICE MANU



## lookoups####                                            2 ⚙
proxychains firefox
ike-scan
dnstracer dedicatedglass.com
Nslookup dedicatedglass.com
(to get dns)
Ping -a dedicatedglass.com
tlssled 192.168.50.1                                                    2 ⚙
sslscan -h dedicatedglass.com
Recon-ng                                      2 ⚙
To grab SSL certificates
sslyze --regular website or ip
nslookup IP >> nslookup.txt
http://geoiplookup.net/



#### WIRESHARK #### 



radio_name = $(iw dev | awk) '$1=="Interface"{print $2}'

#### AIRMON-NG // SUITE ### 
aireplay-ng -0 0 mac -c mac_of_radio radio_name 
airemon-ng start external_radio 6 # the number is the channel 
kismet -c radio_name  ## GETS THE MAC ADDRESS 




############ NMAP #############
## nmap to return open ports and services -SV (specific device)
sudo nmap -sV -Pn -v ns8231.hostgator.com (#port knocking)
Sudo nmap -A -Pn  -v 76.172.85.231
nmap -sI -v google.com 192.168.50.1                                        2 ⚙
nmap -sW -v 192.168.50.1
## nmap to find who's on Lan (subnet) #####
nmap -sn -v - A--version-intenstity=9 192.168.0.0/24
  
## nmap to return mac address
sudo nmap -sP -n 192.168.0.0/24
airodump-ng wlx0013eff5483f -c 11
netdiscover -r 192.168.50.1/24
airodump-ng wlx0013eff5483f --encrypt wep
sudo iwlist wlx0013eff5483f scanning | egrep 'Cell |Encryption|Quality|Last beacon|ESSID'

#### TO GET DEVICES AND DISTANCE
sudo iw dev wlx0013eff5483f scan | egrep "signal:|SSID:" | sed -e "s/\tsignal: //" -e "s/\tSSID: //" | awk '{ORS = (NR % 2 == 0)? "\n" : " "; print}' | sort


##### TO FIND WEP PROTECTION ####
airodump-ng wlx0013eff5483f --encrypt wep



cd /usr/share/nmap/scripts
nmap --script nmap-vulners/ -sV -sS -Pn -A -v 192.168.50.1/24 --version-intensity=9
nmap -sV --script=vulscan/vulscan.nse 192.168.50.111
nmap --script nmap-vulners/ -sV www.securitytrails.com
nmap --script nmap-vulners/ -sV 11.22.33.44
nmap --script nmap-vulners/,vulscan/ -sV yourwebsite.com
nmap -Pn --script vuln 192.168.1.105

echo "scanning for open ports"
nmap -iL probed.txt -T5 -oA scans/port_scan.txt -V

## NMAP 
echo "scanning for open ports"
nmap -iL probed.txt -T5 -oA scans/port_scan.txt -V


## php vulnerability
nmap -sV --script=http-php-version testphp.vulnweb.com


#### BRUTE FORCE ####
## BRUTESPRAY --> requries nmap fiel
nmap 192.168.50.1 -oX /home/frank/nmapout.xml
nmap cpanel.dedicatedglass.com/24 -oX /home/frank/nmap.xml

brutespray --file nmapout.xml --threads 5
brutespray -file nmapout.xml -t 5 -s ftp
brutespray --file nmapfuad.xml -U names.txt -P milw0rm-dictionary.txt --threads 5
brutespray --file nmapfuad.xml -U /home/frank/names.txt -P /home/frank/milw0rm-dictionary.txt --threads 5


###### DEEP OSNIT ### THE HARVESTER #######
cd /home/frank/the_harvester
python3 theHarvester.py -d dedicatedglass.com -l 500 -b all


#########  metasploit # ###########
Msfconsole
Search samba_symlink_traversal
Use / dir to exploit
Show options
Set option IP (look for required)
Exploit (to run export)




######## LOCALIZED INFO ######
ALL HARDWARE INFO
Apt install infix
Infix -Fxz

DIRS=$(ls *.txt)
broadcast = $(ifconfig | grep broadcast)
mac = $(ifconfig | grep mac)

######

##### OSNIT #####
Phonenumbers scanner
phoneinfoga scan -n <number>
phoneinfoga scan -n "+1 (555) 444-1212"

# SKIP TRACER (REVERSE-LICENSE LOOKPI)
git clone https://github.com/xillwillx/skiptracer.git skiptracer
cd skiptracer 
pip install -r requirements.txt
python skiptracer.py -l (phone|email|sn|name|plate)
 

######## OSNIT ###########
### Social media accounts#####
Pyhton3 sherlock.py username

online OSNIT
https://api.wigle.net/
https://www.nirsoft.net/ (look thins up, powerful tool)
http://geoiplookup.net/ ### GEO IP LCOATIONS
tracemyip.org
inteltechniques.com 

### to create fake AP ###
https://cybergibbons.com/security-2/quick-and-easy-fake-wifi-access-point-in-kali/
cd
/etc/hostapd
nano hostapd.conf
./hostapd.conf
iwevent

## WIRESHARK CLI ###
tshark -D
tshark -i 2 -i 5 -i 6
tshark -i 2 -i 5 -i 6 > firstWIRE.csv
tshark -i wlx0013eff5483f
tshark -i wlx0013eff5483f -i any (## all interfaces)


## send deauth
#1 find mac for router (-a) and client (-c)
netdiscover -r 192.168.50.1/24
aireplay-ng --deauth 90000000 -a F0:2F:74:2C:7E:88 -c 9a:26:55:ed:ef:84 wlo1

### CRACKING WEP / WPA ####
besside-ng en0 -c 6 -b
airodump-ng wlx0013eff5483f --encrypt wep


#### GOOGLE DORKS ###
# TO FIND NONSECURE LINKS ON WEBSERVER
site:dedicatedglass.com inurl:http
# TO DORK FOR LOGFILES
Allintext:password textfile:log after:2018

### TO ENUMERATE SUBDOMAINS sublist3r
wget https://github.com/aboul3la/Sublist3r/archive/master.zip
unzip master.zip
./sublist3r.py -d yourdomain.com
## look thru namesystem for hidden 
sudo apt install dirbuster
	
### WEB BASED VULNS ###
git clone https://github.com/droope/droopescan.git
apt install python-pip
pip install droopscan
pip install -r requirements.txt
./droopescan scan --help
## doopscan to scan vulnrable webservers 
droopscan scan drupal -u URL_HERE
droopscan scan silverstripe -u URL_HERE
./droopescan scan --help
droopescan scan drupal -u example.org
droopescan scan drupal -U list_of_urls.txt
droopescan scan -U list_of_urls.txt

python skiptracer.py -l (phone|email|sn|name|plate)
 

## Nikto for webserver vuln scans
git clone https://github.com/sullo/nikto
# Main script is in program/
cd nikto/program
# Run using the shebang interpreter
./nikto.pl -h http://www.example.com
# Run using perl (if you forget to chmod)
#### ONENVAS (NESSUS CLONE) VULN SCAN ### 
apt install openvas 

## ARP SCAN 
echo ('enter pass:')
read pass
$(arp-scan -l | grep Raspberry | awk '{print $1}') root $pass
apt-get update && apt-get install sparta python-requests


## password crackers 
hashcat 
scp <file to upload> <username>@<hostname>:<destination path>
scp -r <directory to upload> <username>@<hostname>:<destination path> # dir scp
echo "put files*.xml" | sftp -p -i ~/.ssh/key_name username@hostname.example #u using relative loc
sftp -b batchfile.txt ~/.ssh/key_name username@hostname.example # using batch in text


### MAC ADDRESS RANDOMIZATION ( CELL PHONES )



