#!/bin/bash
#Declare the log file
LOGFILE=/usr/scriptlog.txt
sleep 5 &&\ 
 echo This script is ONLY for Ubuntu Debian with a Unity GUI. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 13.10, or higher. &&\
 sleep 2 &&\
 read -p "Continue (y/n)?" choice &&\
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac &&\ 2&>1 $LOGFILE
echo Thank you for using my script. Begining the pizza baking and drink refilling. Mnt Dew? &&\
sleep 5 &&\
sudo apt-get install scrot lsb-release &&\ 2&>1 $LOGFILE
                 cd /tmp &&\ 2&>1 $LOGFILE
                 wget -O archey-0.2.8.deb http://goo.gl/a9ku4 &&\ 2&>1 $LOGFILE
                 sudo dpkg -i archey-0.2.8.deb &&\ 2&>1 $LOGFILE
                 archey &&\ 2&>1 $LOGFILE
cd ~ &&\ 2&>1 $LOGFILE
sudo apt-get update && sudo apt-get autoremove &&\ 2&>1 $LOGFILE
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_14.10/ /' >> /etc/apt/sources.list.d/dukto.list" &&\ 2&>1 $LOGFILE
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community:/testing/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list" &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:nowrep/qupzilla &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:sukso96100/budgie-desktop &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:webupd8team/haguichi &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:daniel.pavel/solaar &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:nuvola-player-builders/stable &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:appgrid/stable &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:dhor/myway &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:hikariknight/unix-runescape-client  &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:atareao/atareao &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:ffmulticonverter/stable      &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:peterlevi/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:teejee2008/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:deluge-team/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:asukhovatkin/unity-launcher-folders &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:the-duck/launcher &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:shnatsel/dnscrypt &&\ 2&>1 $LOGFILE
sudo sh -c 'echo "deb http://debs.unvanquished.net trusty main" >> /etc/apt/sources.list.d/unvanquished.list' &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:george-edison55/george-edison &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:samrog131/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:ubuntu-wine/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:n-muench/burg &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:samrog131/ppa &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:webupd8team/tribler &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:me-davidsansome/clementine &&\ 2&>1 $LOGFILE
sudo add-apt-repository -y ppa:wfg/0ad.dev &&\ 2&>1 $LOGFILE
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BA73CFA &&\ 2&>1 $LOGFILE
wget http://debs.unvanquished.net/unvanquished-archive-key.gpg.asc &&\ 2&>1 $LOGFILE
sudo apt-key add unvanquished-archive-key.gpg.asc &&\ 2&>1 $LOGFILE
sudo apt-get update && sudo apt-get autoremove &&\  2&>1 $LOGFILE
echo Now installing! &&\
sudo apt-get install uget &&\  2&>1 $LOGFILE
sudo apt-get install indicator-multiload qupzilla &&\ 2&>1 $LOGFILE
sudo apt-get install filezilla &&\ 2&>1 $LOGFILE
sudo apt-get install unvanquished &&\ 2&>1 $LOGFILE
sudo apt-get install haguichi haguichi-appindicator &&\ 2&>1 $LOGFILE
sudo apt-get install konqueror diodon diodon-plugins gsmartcontrol &&\ 2&>1 $LOGFILE
sudo apt-get install dukto tree appgrid &&\ 2&>1 $LOGFILE
sudo apt-get install nuvolaplayer &&\ 2&>1 $LOGFILE
sudo apt-get install google-chrome-unstable &&\ 2&>1 $LOGFILE
sudo apt-get install conky-all hddtemp &&\ 2&>1 $LOGFILE
sudo apt-get install vlc xbmc &&\ 2&>1 $LOGFILE
 echo Halfway Point of Reference &&\ 2&>1 $LOGFILE
 sleep 10 &&\
sudo apt-get install -y wine1.7 nmon htop &&\ 2&>1 $LOGFILE
sudo apt-get install -y duck-launcher &&\ 2&>1 $LOGFILE
sudo apt-get install -y ubuntu-restricted-extras &&\ 2&>1 $LOGFILE
sudo apt-get install -y geary bacula git openshot mosh deluge &&\ 2&>1 $LOGFILE
sudo apt-get install -y icedtea-7-plugin openjdk-7-jre openjdk-7-jdk unix-runescape-client &&\ 2&>1 $LOGFILE
sudo apt-get install -y unity-tweak-tool qemu-kvm &&\ 2&>1 $LOGFILE
sudo apt-get install -y libvirt-bin &&\ 2&>1 $LOGFILE
sudo apt-get install -y variety openssh-server openssh-client mosh &&\ 2&>1 $LOGFILE
sudo apt-get install -y ftp bridge-utils virt-manager minitube &&\ 2&>1 $LOGFILE
sudo apt-get install -y dnscrypt-proxy &&\ 2&>1 $LOGFILE
echo Error on line 77 &&\ 
sleep 2 &&\
sudo tree &&\ 2&>1 $LOGFILE

sudo apt-get install -y conky-manager &&\ 2&>1 $LOGFILE
sudo apt-get install -y unity-launcher-folders &&\ 2&>1 $LOGFILE
sudo apt-get install -y 0ad &&\ 2&>1 $LOGFILE
sudo apt-get install -y gufw burg burg-themes &&\ 2&>1 $LOGFILE
sudo apt-get install -y y-ppa-manager &&\ 2&>1 $LOGFILE
sudo apt-get install -y ubuntu-vm-builder &&\ 2&>1 $LOGFILE
sudo apt-get install -y tribler &&\ 2&>1 $LOGFILE
sudo apt-get install -y clutter-gtk-1.0 mx-1.0 &&\ 2&>1 $LOGFILE
sudo apt-get install -y indicator-cpufreq traceroute photoqt screen &&\ 2&>1 $LOGFILE
sudo apt-get install -y keybinder-3.0 gee-0.8 &&\ 2&>1 $LOGFILE
sudo apt-get install -y libnspr4-0d guake git gimp cmake &&\ 2&>1 $LOGFILE
sudo apt-get install -y syncwall &&\ 2&>1 $LOGFILE
sudo apt-get install -y terminator clementine &&\ 2&>1 $LOGFILE
sudo apt-get install -y libxml2-dev &&\ 2&>1 $LOGFILE
 echo Finished installing major programs, moving onto major tasks. Please wait why we prepare services. &&\
 sleep 2 &&\
 sudo ln -s /etc/apparmor.d/usr.sbin.dnscrypt-proxy /etc/apparmor.d/disable/ &&\
 echo 10% &&\
 sleep 3 &&\
 echo 54% &&\
 sleep 2 &&\
 sudo apparmor_parser -R /etc/apparmor.d/usr.sbin.dnscrypt-proxy &&\
 echo 98% &&\
 sleep 5 &&\
 echo Finished Recovery, installing manual downloads, *Warning! if damaged or errored, please contact me! linuxkeymaker@gmail.com* &&\
 sleep 10 &&\ 
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 &&\ 2&>1 $LOGFILE
cd ~/Downloads &&\ 2&>1 $LOGFILE
wget -O nomachine.deb http://download.nomachine.com/download/4.4/Linux/nomachine_4.4.1_1_amd64.deb &&\ 2&>1 $LOGFILE
sudo dpkg -i nomachine.deb &&\ 2&>1 $LOGFILE
wget -O Tomb.tar.gz https://files.dyne.org/.xsend.php?file=tomb/Tomb-2.0.1.tar.gz &&\ 2&>1 $LOGFILE
tar xvfz Tomb.tar.gz &&\ 2&>1 $LOGFILE
cd Tomb-2.0.1 &&\ 2&>1 $LOGFILE
sudo make install &&\ 2&>1 $LOGFILE
wget -O kingsoft-office-NoobsLab.deb http://kdl.cc.ksosoft.com/wps-community/download/a16/wps-office_9.1.0.4945~a16p3_i386.deb    &&\
sudo dpkg -i kingsoft-office-NoobsLab.deb     &&\ 2&>1 $LOGFILE
rm kingsoft-office-NoobsLab.deb &&\ 2&>1 $LOGFILE
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb &&\ 2&>1 $LOGFILE
  sudo apt-get install gdebi-core &&\ 2&>1 $LOGFILE
  sudo gdebi steam_latest.deb &&\ 2&>1 $LOGFILE
wget -O unified-remote.deb http://www.unifiedremote.com/download/linux-x64-deb &&\ 2&>1 $LOGFILE
sudo dpkg -i unified-remote.deb &&\ 2&>1 $LOGFILE
sudo apt-get upgrade &&\ 2&>1 $LOGFILE
echo Congratulations It finished! &&\ 2&>1 $LOGFILE
 sleep 2 &&\ 2&>1 $LOGFILE
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! &&\ 2&>1 $LOGFILE
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
