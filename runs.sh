#!/bin/bash
#Declare the log file
[[ $(id --user) -ne 0 ]] && { echo "Sudoing..." ; sudo $(readlink -e $0) "$@" ; exit 0 ; } # sudo ourself
LOGFILE=/usr/scriptlog.txt
sleep 5
 echo This script is ONLY for Ubuntu Debian Server 64bit. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 14.04, or higher. 
sleep 10

ppas=( 
                               
     )

declare -A add_ppas=( 
                      ["Ajenti"]=""
                    )

packages=(
          tmux
          mosh
          htop
          nmon
          ufw
         )
 PhP=    (
         php5-fpm
         php5-mysql 
         )
 
 while :
do
    read -p "Continue? y/n " choice
    case ${choice,,} in
        y|ye|yes) break;;
        n|no) echo "Bye!"; exit;;
    esac
done

{
    for ppa in "${ppas[@]}"
    do
        add-apt repository -a "$ppa"
    done

    for add in "${!add_ppas[@]}"
    do
        echo "deb ${add_ppas[$add]}" >> "/etc/apt/sources.list.d/$add.list"
    done



    apt-get update && sudo apt-get autoremove

#   apt-get install "${packages[@]}"  # everything at once

    for pkg in "${packages[@]}"
    do
        apt-get install -y "$pkg"
    done
 
 ajenti_install()
 {
  echo "Installing Ajenti..."
  wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh
  ufw allow 8000/tcp
  
 }
 
#lemp_install()
{
  echo "installing LEMP...."
  apt-get install nginx mysql-server
  mysql_install_db
  mysql_secure_installation
   for pkg in "${PhP[@]}"
    do
        apt-get install -a "$pkg"
    done
}
 secure_install()
 {
   echo "Securing Server..."
   #mkdir ~/bak
   #sed -i.bak 'd' /etc/ssh/sshd_config
   #mv /etc/ssh/sshd_config.bak ~/bak/
   #sed -i 's/22/22880/' /etc/ssh/sshd_config
   ufw default deny incoming
   ufw default allow outgoing
   ufw allow 22880/tcp
   ufw allow 9987/upd
   ufw allow 30033/tcp
   ufw allow 10011/tcp
   ufw allow 41144/tcp
   ufw allow 443/tcp
   ufw allow 25/tcp
   ufw allow 80/tcp
   ufw allow ssh
   ufw allow sftp
   adduser nonadmin
   gpasswd -a nonadmin sudo
   dpkg-statoverride --update --add root sudo 4750 /bin/su
   #I need to add the Improve IP security, php hardening,  from http://blog.mattbrock.co.uk/hardening-the-security-on-ubuntu-server-14-04/
   #This is where we will configure private ssh keys, once I learn how to use regex better
   #This is where the line for PermitRootLogin yes should be changed to PermitRootLogin no
   echo "A user was created named (nonadmin) Which is the admin account that will allow you to switch to root."
   sleep 5
   dpkg-reconfigure -plow unattended-upgrades
   apt-get install acct logwatch
   mv /etc/cron.daily/00logwatch /etc/cron.weekly/
   #Don't know how to do this either (--range 'between -7 days and -1 days' to the end of the /usr/sbin/logwatch command.)
   touch /var/log/wtmp
   #I also want to setup his bash script. 
   echo "When using mosh, please use mosh user@example.com --ssh="ssh -p 22880" instead"
   sleep 5
 }

#while :
do
    read -n1 -p "Do you want to install LEMP [Y]es [N]o  " choice
    echo
    case ${choice^} in
        Y) lemp_install;;
        N) break;;          #<- this will restart the LEMP question, if you want to move beyond the loop on N you need break
        *) continue;;
    esac
    break
done
while :
do
    read -n1 -p "Do you want to use Automated Seucure Linux [Y]es [N]o  " choice
    echo
    case ${choice^} in
        Y) secure_install;;
        N) break;;          #<- this will restart the LEMP question, if you want to move beyond the loop on N you need break
        *) continue;;
    esac
    break
done
while :
do
    read -n1 -p "Do you want to install Ajenti Control Panel [Y]es [N]o  " choice
    echo
    case ${choice^} in
        Y) ajenti_install;;
        N) break;;          #<- this will restart the LEMP question, if you want to move beyond the loop on N you need break
        *) continue;;
    esac
    break
done


# --- start -------------------



# etc
# etc
# etc 

}
cd /usr/share
mkdir /Teamspeak
chgrp keyxmakerx Teamspeak
wget -O ts-package.tar.gz http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz &&\
tar xvfz ts-package.tar.gz
echo Congratulations It finished! 
 sleep 2 
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! 
 sleep 4
 ufw enable
reboot
