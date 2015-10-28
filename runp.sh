#!/bin/bash
#Declare the log file
[[ $(id --user) -ne 0 ]] && { echo "Sudoing..." ; sudo $(readlink -e $0) "$@" ; exit 0 ; } # sudo ourself
LOGFILE=/usr/scriptlog.txt
sleep 5
 echo This script is ONLY for Ubuntu Debian with a Unity GUI. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 14.04 LTS, or higher. This Version of the script is for the Personal use, and will ask you to install certain software before installing.
sleep 10

ppas=( 
       ppa:nowrep/qupzilla                      
       ppa:daniel.pavel/solaar                  ppa:the-duck/launcher
       ppa:nuvola-player-builders/stable        ppa:appgrid/stable
       ppa:dhor/myway                           ppa:hikariknight/unix-runescape-client
       ppa:atareao/atareao                      ppa:ffmulticonverter/stable
       ppa:peterlevi/ppa                        ppa:teejee2008/ppa
       ppa:deluge-team/ppa                      ppa:team-xbmc/ppa
       ppa:the-duck/launcher                    ppa:anton+/dnscrypt
       ppa:danielrichter2007/grub-customizer    ppa:george-edison55/george-edison
       ppa:samrog131/ppa                        ppa:ubuntu-wine/ppa
       ppa:n-muench/burg                        ppa:nilarimogard/webupd8
       ppa:samrog131/ppa                        
       ppa:webupd8team/y-ppa-manager            ppa:me-davidsansome/clementine
       ppa:indicator-multiload/daily
       ppa:ytvwld/syncthing
     )

declare -A add_ppas=( 
                      ["unvanquished"]="http://debs.unvanquished.net trusty main"
                      ["owncloud-client"]="http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_14.10/ /"
                      ["dukto"]="http://download.opensuse.org/repositories/isv:/ownCloud:/community:/testing/xUbuntu_14.04/ /"                     
                      ["spotify"]="http://repository.spotify.com stable non-free" 
                      ["Chrome"]="http://dl.google.com/linux/chrome/deb/ stable main"
                    )

packages=(
           uget
           indicator-multiload qupzilla
           filezilla
           unvanquished
           haguichi haguichi-appindicator
           konqueror diodon diodon-plugins gsmartcontrol
           dukto tree appgrid
           nuvolaplayer
           google-chrome-unstable
           conky-all hddtemp
           dnscrypt-proxy
           vlc xbmc
           wine1.7 nmon htop
           duck-launcher 
           ubuntu-restricted-extras 
           geary git openshot mosh deluge 
           icedtea-7-plugin openjdk-7-jre openjdk-7-jdk unix-runescape-client 
           unity-tweak-tool qemu-kvm 
           libvirt-bin 
           variety openssh-server openssh-client mosh 
           ftp bridge-utils virt-manager minitube 
           dnscrypt-proxy 
           conky-manager 
           unity-launcher-folders 
           gufw burg burg-themes 
           kodi
           y-ppa-manager 
           ubuntu-vm-builder 
           clutter-gtk-1.0 mx-1.0 
           indicator-cpufreq traceroute screen 
           keybinder-3.0 gee-0.8 
           libnspr4-0d guake git gimp cmake 
           terminator clementine 
           libxml2-dev 
           lib32z1 
           lib32ncurses5 
           lib32bz2-1.0
           gnome-boxes
           syncthing
           spotify-client
         )

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
        add-apt repository -y "$ppa"
    done

    for add in "${!add_ppas[@]}"
    do
        echo "deb ${add_ppas[$add]}" >> "/etc/apt/sources.list.d/$add.list"
    done

    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BA73CFA
    wget http://debs.unvanquished.net/unvanquished-archive-key.gpg.asc
    apt-key add unvanquished-archive-key.gpg.asc
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

    apt-get update && sudo apt-get autoremove

#   apt-get install "${packages[@]}"  # everything at once

    sudo apt-get build-dep guake

    for pkg in "${packages[@]}"
    do
        apt-get install -y "$pkg"
    done
    
    perl -pi -e 's/^(GRUB_TIMEOUT=)[0-9]+$/${1}2/g' /etc/default/grub
# etc
# etc
# etc 

}
cd ~/Downloads 
wget -O nomachine.deb http://download.nomachine.com/download/5.0/Linux/nomachine_5.0.47_1_amd64.deb
sudo dpkg -i nomachine.deb 
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb 
  sudo apt-get install gdebi-core 
  sudo gdebi steam_latest.deb 
wget -O unified-remote.deb https://www.unifiedremote.com/download/linux-x64-deb 
sudo dpkg -i unified-remote.deb 
sudo apt-get upgrade 
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
