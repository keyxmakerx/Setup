#!/bin/bash
#Declare the log file
LOGFILE=/usr/scriptlog.txt
sleep 5
 echo This script is ONLY for Ubuntu Debian with a Unity GUI. It will work on other distros with errors along with it. Proceed with Caution if you are not using Ubuntu 13.10, or higher. 
 sleep 2
 read -p "Continue (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac &>"$LOGFILE"
echo Thank you for using my script. Begining the pizza baking and drink refilling. Mnt Dew? &>"$LOGFILE"
sleep 5 &>"$LOGFILE"
sudo apt-get install scrot lsb-release &>"$LOGFILE"
                 cd /tmp &>"$LOGFILE"
                 wget -O archey-0.2.8.deb http://goo.gl/a9ku4 &>"$LOGFILE"
                 sudo dpkg -i archey-0.2.8.deb &>"$LOGFILE"
                 archey &&\ &>"$LOGFILE"
cd ~ &>"$LOGFILE"
sudo apt-get update && sudo apt-get autoremove &>"$LOGFILE"
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_14.10/ /' >> /etc/apt/sources.list.d/dukto.list" &>"$LOGFILE"
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community:/testing/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list" &>"$LOGFILE"
sudo add-apt-repository -y ppa:nowrep/qupzilla &>"$LOGFILE"
sudo add-apt-repository -y ppa:sukso96100/budgie-desktop &>"$LOGFILE"
sudo add-apt-repository -y ppa:webupd8team/haguichi &>"$LOGFILE"
sudo add-apt-repository -y ppa:daniel.pavel/solaar &>"$LOGFILE"
sudo add-apt-repository -y ppa:nuvola-player-builders/stable &>"$LOGFILE"
sudo add-apt-repository -y ppa:appgrid/stable &>"$LOGFILE"
sudo add-apt-repository -y ppa:dhor/myway &>"$LOGFILE"
sudo add-apt-repository -y ppa:hikariknight/unix-runescape-client  &>"$LOGFILE"
sudo add-apt-repository -y ppa:atareao/atareao &>"$LOGFILE"
sudo add-apt-repository -y ppa:ffmulticonverter/stable      &>"$LOGFILE"
sudo add-apt-repository -y ppa:peterlevi/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:teejee2008/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:deluge-team/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:asukhovatkin/unity-launcher-folders &>"$LOGFILE"
sudo add-apt-repository -y ppa:the-duck/launcher &>"$LOGFILE"
sudo add-apt-repository -y ppa:shnatsel/dnscrypt &>"$LOGFILE"
sudo sh -c 'echo "deb http://debs.unvanquished.net trusty main" >> /etc/apt/sources.list.d/unvanquished.list' &>"$LOGFILE"
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer &>"$LOGFILE"
sudo add-apt-repository -y ppa:george-edison55/george-edison &>"$LOGFILE"
sudo add-apt-repository -y ppa:samrog131/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:ubuntu-wine/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:n-muench/burg &>"$LOGFILE"
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &>"$LOGFILE"
sudo add-apt-repository -y ppa:samrog131/ppa &>"$LOGFILE"
sudo add-apt-repository -y ppa:webupd8team/tribler &>"$LOGFILE"
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager &>"$LOGFILE"
sudo add-apt-repository -y ppa:me-davidsansome/clementine &>"$LOGFILE"
sudo add-apt-repository -y ppa:wfg/0ad.dev &>"$LOGFILE"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BA73CFA &>"$LOGFILE"
wget http://debs.unvanquished.net/unvanquished-archive-key.gpg.asc &>"$LOGFILE"
sudo apt-key add unvanquished-archive-key.gpg.asc &>"$LOGFILE"
sudo apt-get update && sudo apt-get autoremove &&\  2&>1 $LOGFILE
echo Now installing! &&\
sudo apt-get install uget &&\  2&>1 $LOGFILE
sudo apt-get install indicator-multiload qupzilla &>"$LOGFILE"
sudo apt-get install filezilla &>"$LOGFILE"
sudo apt-get install unvanquished &>"$LOGFILE"
sudo apt-get install haguichi haguichi-appindicator &>"$LOGFILE"
sudo apt-get install konqueror diodon diodon-plugins gsmartcontrol &>"$LOGFILE"
sudo apt-get install dukto tree appgrid &>"$LOGFILE"
sudo apt-get install nuvolaplayer &>"$LOGFILE"
sudo apt-get install google-chrome-unstable &>"$LOGFILE"
sudo apt-get install conky-all hddtemp &>"$LOGFILE"
sudo apt-get install vlc xbmc &>"$LOGFILE"
 echo Halfway Point of Reference &>"$LOGFILE"
 sleep 10 &&\
sudo apt-get install -y wine1.7 nmon htop &>"$LOGFILE"
sudo apt-get install -y duck-launcher &>"$LOGFILE"
sudo apt-get install -y ubuntu-restricted-extras &>"$LOGFILE"
sudo apt-get install -y geary bacula git openshot mosh deluge &>"$LOGFILE"
sudo apt-get install -y icedtea-7-plugin openjdk-7-jre openjdk-7-jdk unix-runescape-client &>"$LOGFILE"
sudo apt-get install -y unity-tweak-tool qemu-kvm &>"$LOGFILE"
sudo apt-get install -y libvirt-bin &>"$LOGFILE"
sudo apt-get install -y variety openssh-server openssh-client mosh &>"$LOGFILE"
sudo apt-get install -y ftp bridge-utils virt-manager minitube &>"$LOGFILE"
sudo apt-get install -y dnscrypt-proxy &>"$LOGFILE"
echo Error on line 77 &&\ 
sleep 2 &&\
sudo tree &>"$LOGFILE"

sudo apt-get install -y conky-manager &>"$LOGFILE"
sudo apt-get install -y unity-launcher-folders &>"$LOGFILE"
sudo apt-get install -y 0ad &>"$LOGFILE"
sudo apt-get install -y gufw burg burg-themes &>"$LOGFILE"
sudo apt-get install -y y-ppa-manager &>"$LOGFILE"
sudo apt-get install -y ubuntu-vm-builder &>"$LOGFILE"
sudo apt-get install -y tribler &>"$LOGFILE"
sudo apt-get install -y clutter-gtk-1.0 mx-1.0 &>"$LOGFILE"
sudo apt-get install -y indicator-cpufreq traceroute photoqt screen &>"$LOGFILE"
sudo apt-get install -y keybinder-3.0 gee-0.8 &>"$LOGFILE"
sudo apt-get install -y libnspr4-0d guake git gimp cmake &>"$LOGFILE"
sudo apt-get install -y syncwall &>"$LOGFILE"
sudo apt-get install -y terminator clementine &>"$LOGFILE"
sudo apt-get install -y libxml2-dev &>"$LOGFILE"
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
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 &>"$LOGFILE"
cd ~/Downloads &>"$LOGFILE"
wget -O nomachine.deb http://download.nomachine.com/download/4.4/Linux/nomachine_4.4.1_1_amd64.deb &>"$LOGFILE"
sudo dpkg -i nomachine.deb &>"$LOGFILE"
wget -O Tomb.tar.gz https://files.dyne.org/.xsend.php?file=tomb/Tomb-2.0.1.tar.gz &>"$LOGFILE"
tar xvfz Tomb.tar.gz &>"$LOGFILE"
cd Tomb-2.0.1 &>"$LOGFILE"
sudo make install &>"$LOGFILE"
wget -O kingsoft-office-NoobsLab.deb http://kdl.cc.ksosoft.com/wps-community/download/a16/wps-office_9.1.0.4945~a16p3_i386.deb    &&\
sudo dpkg -i kingsoft-office-NoobsLab.deb     &>"$LOGFILE"
rm kingsoft-office-NoobsLab.deb &>"$LOGFILE"
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb &>"$LOGFILE"
  sudo apt-get install gdebi-core &>"$LOGFILE"
  sudo gdebi steam_latest.deb &>"$LOGFILE"
wget -O unified-remote.deb http://www.unifiedremote.com/download/linux-x64-deb &>"$LOGFILE"
sudo dpkg -i unified-remote.deb &>"$LOGFILE"
sudo apt-get upgrade &>"$LOGFILE"
echo Congratulations It finished! &>"$LOGFILE"
 sleep 2 &>"$LOGFILE"
 echo Dont forget to add programs needed to your startup, in ubuntu just type startup in the unity search bar. If you are using another distro, Google it lazy! &>"$LOGFILE"
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
