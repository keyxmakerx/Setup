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
                      ["unvanquished"]="http://debs.unvanquished.net trusty main"
                      ["owncloud-client"]="http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_14.10/ /"
                      ["dukto"]="http://download.opensuse.org/repositories/isv:/ownCloud:/community:/testing/xUbuntu_14.04/ /"                     
                    )

packages=(
          tmux
         )
 PhP=( php5-fpm php5-mysql )
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

# --- start -------------------

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

# etc
# etc
# etc 

}
cd ~/Downloads 
wget -O nomachine.deb http://download.nomachine.com/download/4.4/Linux/nomachine_4.4.1_1_amd64.deb 
sudo dpkg -i nomachine.deb 
cd /usr/share
mkdir /Teamspeak
chgrp keyxmakerx Teamspeak
wget -O ts-package.tar.gz http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz &&\
tar xvfz ts-package.tar.gz
echo Congratulations It finished! 
 sleep 2 
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! 
 sleep 4
  
#intel Drivers
#sudo apt-get install i965-va-driver &&\ 
 #            sudo wget https://download.01.org/gfx/ubuntu/14.04/main/pool/main/i/intel-linux-graphics-installer/intel-linux-graphics-installer_1.0.5-0intel1_amd64.deb &&\ 
  #           sudo apt-get update &&\ 
   #          sudo dkph -i intel-linux-graphics-installer_1.0.5-0intel1_amd64.deb

#Nvidea Drivers
#sudo add-apt-repository ppa:bumblebee/stable &&\
 #           sudo apt-get update &&\
  #          sudo apt-get install bumblebee bumblebee-nvidia

#Silverlight
#sudo apt-add-repository ppa:ehoover/compholio &&\
 #        sudo apt-add-repository ppa:mqchael/pipelight &&\
  #       sudo apt-get update && sudo apt-get upgrade &&\
   #      sudo apt-get install pipelight &&\
    #     rm -rf ~/.wine-pipelight/

    #Next install 
#         "Chrome - https://chrome.google.com/webstore/detail/user-agent-switcher-for-c/#djflhoibgkdhkhhcedjiklpkjnoahfmg" //Currently Chrome Doesnt work!
#         "Firefox https://addons.mozilla.org/en-US/firefox/addon/user-agent-overrider" 
#         //Select the firefox 15 or + version
    #Minetest
#sudo apt-get install git build-essential libirrlicht-dev libgettextpo0 libfreetype6-dev cmake libbz2-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev; git clone git://github.com/minetest/minetest.git; cd minetest/games; git clone git://github.com/minetest/minetest_game.git; cd ..; cmake . -DENABLE_GETTEXT=1 -DENABLE_FREETYPE=1 -DCMAKE_INSTALL_PREFIX:PATH=$(pwd); cd src; make -j$(grep -c processor /proc/cpuinfo); sudo make install; cd ../bin; ./minetest; echo -e "You can run Minetest again by double-clicking \"minetest\" in the \"bin\" folder of the \"minetest\" folder in your home folder.\nYou can install mods in ~/.minetest/mods"lots of hardware -
