#!/bin/bash
#Declare the log file
[[ $(id --user) -ne 0 ]] && { echo "Sudoing..." ; sudo $(readlink -e $0) "$@" ; exit 0 ; } # sudo ourself
LOGFILE=/usr/scriptlog.txt
mkdir /usr/share/Teamspeak
cd /usr/share/Teamspeak
wget -O ts-package.tar.gz http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz &&\
tar xvfz ts-package.tar.gz -C Server --strip-components 1
chgrp -R nonadmin /usr/share/Teamspeak
chmod -R 770 /usr/share/Teamspeak
chmod +r -R /usr/share/Teamspeak
echo Congratulations It finished! 
 sleep 2 
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! 
 sleep 4
 ufw enable
reboot
