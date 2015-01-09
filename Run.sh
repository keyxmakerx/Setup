#!/bin/bash
sleep 5 &&\
 echo This script is ONLY for Ubuntu Debian with a Unity GUI. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 13.10, or higher. &&\
 sleep 2 &&\
 read -p "Continue (y/n)?" choice &&\
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac &&\
echo Thank you for using my script. Begining the pizza baking and drink refilling. Mnt Dew? &&\
sleep 5 &&\
sudo apt-get install scrot lsb-release &&\
                 cd /tmp &&\
                 wget -O archey-0.2.8.deb http://goo.gl/a9ku4 &&\
                 sudo dpkg -i archey-0.2.8.deb &&\
                 archey &&\
cd ~ &&\
sudo apt-get update && sudo apt-get autoremove &&\
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_14.10/ /' >> /etc/apt/sources.list.d/dukto.list" &&\
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community:/testing/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
sudo add-apt-repository ppa:nowrep/qupzilla &&\
sudo add-apt-repository ppa:sukso96100/budgie-desktop &&\
sudo add-apt-repository ppa:webupd8team/haguichi &&\
sudo add-apt-repository ppa:daniel.pavel/solaar &&\
sudo add-apt-repository ppa:nuvola-player-builders/stable &&\ 
sudo add-apt-repository ppa:appgrid/stable &&\
sudo add-apt-repository ppa:dhor/myway &&\
sudo add-apt-repository ppa:hikariknight/unix-runescape-client  &&\
sudo add-apt-repository ppa:atareao/atareao &&\
sudo add-apt-repository ppa:ffmulticonverter/stable      &&\
sudo add-apt-repository ppa:peterlevi/ppa &&\
sudo add-apt-repository ppa:teejee2008/ppa &&\
sudo add-apt-repository ppa:deluge-team/ppa &&\
sudo add-apt-repository ppa:asukhovatkin/unity-launcher-folders &&\
sudo add-apt-repository ppa:the-duck/launcher &&\
sudo add-apt-repository ppa:shnatsel/dnscrypt &&\
sudo sh -c 'echo "deb http://debs.unvanquished.net trusty main" >> /etc/apt/sources.list.d/unvanquished.list' &&\
sudo add-apt-repository ppa:danielrichter2007/grub-customizer &&\
sudo add-apt-repository ppa:george-edison55/george-edison &&\
sudo add-apt-repository ppa:samrog131/ppa &&\
sudo add-apt-repository ppa:ubuntu-wine/ppa &&\
sudo add-apt-repository ppa:n-muench/burg &&\
sudo add-apt-repository ppa:nilarimogard/webupd8 &&\
sudo add-apt-repository ppa:samrog131/ppa &&\
sudo add-apt-repository ppa:webupd8team/tribler &&\
sudo add-apt-repository ppa:webupd8team/y-ppa-manager &&\
sudo add-apt-repository ppa:me-davidsansome/clementine &&\
sudo add-apt-repository ppa:wfg/0ad.dev &&\
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BA73CFA &&\
wget http://debs.unvanquished.net/unvanquished-archive-key.gpg.asc &&\
sudo apt-key add unvanquished-archive-key.gpg.asc &&\
sudo apt-get update && sudo apt-get autoremove &&\ 
echo Now installing!
sudo apt-get install uget &&\
sudo apt-get install indicator-multiload qupzilla &&\
sudo apt-get install filezilla &&\
sudo apt-get install unvanquished &&\
sudo apt-get install haguichi haguichi-appindicator &&\
sudo apt-get install konqueror diodon diodon-plugins gsmartcontrol &&\
sudo apt-get install dukto tree appgrid &&\
sudo apt-get install nuvolaplayer &&\
sudo apt-get install google-chrome-unstable &&\
sudo apt-get install conky-all hddtemp &&\
sudo apt-get install vlc xbmc &&\
 echo Halfway Point of Reference &&\
 sleep 10 &&\
sudo apt-get install wine1.7 nmon htop &&\
sudo apt-get install duck-launcher &&\
sudo apt-get install ubuntu-restricted-extras &&\
sudo apt-get install geary bacula git openshot mosh deluge &&\
sudo apt-get install icedtea-7-plugin openjdk-7-jre openjdk-7-jdk unix-runescape-client &&\
sudo apt-get install unity-tweak-tool qemu-kvm &&\
sudo apt-get install libvirt-bin &&\
sudo apt-get install variety openssh-server openssh-client mosh &&\
sudo apt-get install ftp bridge-utils virt-manager minitube &&\
sudo apt-get install dnscrypt-proxy &&\
echo Error on line 77 &&\
sleep 2 &&\
sudo tree &&\

sudo apt-get install conky-manager &&\
sudo apt-get install unity-launcher-folders &&\
sudo apt-get install 0ad &&\
sudo apt-get install gufw burg burg-themes &&\
sudo apt-get install y-ppa-manager &&\
sudo apt-get install ubuntu-vm-builder &&\
sudo apt-get install tribler &&\
sudo apt-get install clutter-gtk-1.0 mx-1.0 &&\
sudo apt-get install indicator-cpufreq traceroute photoqt screen &&\
sudo apt-get install keybinder-3.0 gee-0.8 &&\
sudo apt-get install libnspr4-0d guake git gimp cmake &&\
sudo apt-get install syncwall &&\
sudo apt-get install terminator clementine &&\
sudo apt-get install libxml2-dev &&\
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
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 &&\
cd ~/Downloads
wget -O nomachine.deb http://download.nomachine.com/download/4.4/Linux/nomachine_4.4.1_1_amd64.deb &&\
sudo dpkg -i nomachine.deb &&\
wget -O Tomb.tar.gz https://files.dyne.org/.xsend.php?file=tomb/Tomb-2.0.1.tar.gz &&\
tar xvfz Tomb.tar.gz &&\
cd Tomb-2.0.1 &&\
sudo make install &&\
wget -O kingsoft-office-NoobsLab.deb http://kdl.cc.ksosoft.com/wps-community/download/a16/wps-office_9.1.0.4945~a16p3_i386.deb    &&\
sudo dpkg -i kingsoft-office-NoobsLab.deb     &&\
rm kingsoft-office-NoobsLab.deb &&\
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb &&\
  sudo apt-get install gdebi-core &&\
  sudo gdebi steam_latest.deb &&\
wget -O unified-remote.deb http://www.unifiedremote.com/download/linux-x64-deb &&\
sudo dpkg -i unified-remote.deb &&\
sudo apt-get upgrade &&\
echo Congratulations It finished! &&\
 sleep 2 &&
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! &&\
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
