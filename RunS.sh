#!/bin/bash
#Declare the log file
[[ $(id --user) -ne 0 ]] && { echo "Sudoing..." ; sudo $(readlink -e $0) "$@" ; exit 0 ; } # sudo ourself
LOGFILE=/usr/scriptlog.txt
sleep 5
 echo This script is ONLY for Ubuntu Debian with a Unity GUI. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 13.10, or higher. 
sleep 10

ppas=( 
                               
     )

declare -A add_ppas=( 
                      ["Ajenti"]="http://repo.ajenti.org/ng/debian main main ubuntu"
                    )

packages=(
          tmux
          mosh
          htop
          nmon
          ufw
         )
 PhP=( php5-fpm php5-mysql )
 
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
        apt-get install "$pkg"
    done
 
 ajenti_install()
 {
  echo "Installing Ajenti..."
  wget http://repo.ajenti.org/debian/key -O- | sudo apt-key add -
  apt-get install ajenti
  service ajenti restart
  ufw allow 8000
  
 }
 
 lemp_install()
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
   mkdir ~/bak
   sed -i.bak 'd' /etc/ssh/sshd_config
   mv /etc/ssh/ssh_config ~/bak/
   sed -i 's/22/22880/' /etc/ssh/sshd_config
   ufw default deny incoming
   ufw default allow outgoing
   ufw allow 22880/tcp
   ufw allow 9987/upd
   ufw allow 30033/tcp
   ufw allow 10011/tcp
   ufw allow 41144/tcp
   ufw allow www
   ufw allow sftp
   ufw enable
 }

while :
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
  
