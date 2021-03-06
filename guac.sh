#!/bin/bash
# WORKING ON UBUNTU 15.10 WITH GUAC 0.9.9 AND TOMCAT8

# Sudo ourself
[[ $(id --user) -ne 0 ]] && { echo "Sudoing..." ; sudo $(readlink -e $0) "$@" ; exit 0 ; }

#Move to Hoome Directory
cd ~\

#Update Everything
apt-get update && apt-get -y dist-upgrade

#Nulled Values that will be changed
mysqlpass=''
gpass=''

#MySql Password
while true; do
read -p "Password for MySQL " mysqlpass;
echo "Confirm Password ";    
read -p "Re-enter password: " mysqlpassverify;    
if [ $mysqlpass == $mysqlpassverify ]; then     
echo "Success"
break;  
else      
echo "failed, please try again"     
echo;          
fi;             
done;

#Guacamole password
while true; do
read -p "Password for Guacamole " gpass;
echo "Confirm Password ";    
read -p "Re-enter password: " gpassverify;    
if [ $gpass == $gpassverify ]; then     
echo "Success"
break;  
else      
echo "failed, please try again"     
echo;          
fi;             
done;

#Install Stuff
sudo debconf-set-selections <<< 'mysql-server mysql-server/$mysqlpass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/$mysqlpass'
sudo apt-get -y install mysql-server
apt-get -y install libcairo2-dev libpng12-dev libossp-uuid-dev libfreerdp-dev libpango1.0-dev libssh2-1-dev libtelnet-dev libvncserver-dev libpulse-dev libssl-dev libvorbis-dev libwebp-dev  mysql-client mysql-common mysql-utilities tomcat8

# Install libjpeg-turbo-dev
wget -O libjpeg-turbo-official_1.4.2_amd64.deb http://downloads.sourceforge.net/project/libjpeg-turbo/1.4.2/libjpeg-turbo-official_1.4.2_amd64.deb
dpkg -i libjpeg-turbo-official_1.4.2_amd64.deb

# Add GUACAMOLE_HOME to Tomcat8 ENV
echo "" >> /etc/default/tomcat8
echo "# GUACAMOLE EVN VARIABLE" >> /etc/default/tomcat8
echo "GUACAMOLE_HOME=/etc/guacamole" >> /etc/default/tomcat8

#Download Guacamole Files
wget -O guacamole-0.9.9.war http://downloads.sourceforge.net/project/guacamole/current/binary/guacamole-0.9.9.war
wget -O guacamole-server-0.9.9.tar.gz http://sourceforge.net/projects/guacamole/files/current/source/guacamole-server-0.9.9.tar.gz
wget -O guacamole-auth-jdbc-0.9.9.tar.gz http://sourceforge.net/projects/guacamole/files/current/extensions/guacamole-auth-jdbc-0.9.9.tar.gz
wget -O mysql-connector-java-5.1.38.tar.gz http://dev.mysql.com/get/Downloads/Connector/j/mysql-connector-java-5.1.38.tar.gz

#Extract Guac
tar -xzf guacamole-server-0.9.9.tar.gz
tar -xzf guacamole-auth-jdbc-0.9.9.tar.gz
tar -xzf mysql-connector-java-5.1.38.tar.gz

# MAKE DIRECTORIES
mkdir /etc/guacamole
mkdir /etc/guacamole/lib
mkdir /etc/guacamole/extensions

# Install GUACD
cd guacamole-server-0.9.9
./configure --with-init-dir=/etc/init.d
make
make install
ldconfig
systemctl enable guacd
cd ..

# Move files to correct locations
mv guacamole-0.9.9.war /etc/guacamole/guacamole.war
ln -s /etc/guacamole/guacamole.war /var/lib/tomcat8/webapps/
cp mysql-connector-java-5.1.38/mysql-connector-java-5.1.38-bin.jar /etc/guacamole/lib/
cp guacamole-auth-jdbc-0.9.9/mysql/guacamole-auth-jdbc-mysql-0.9.9.jar /etc/guacamole/extensions/

# Configure guacamole.properties
echo "mysql-hostname: localhost" >> /etc/guacamole/guacamole.properties
echo "mysql-port: 3306" >> /etc/guacamole/guacamole.properties
echo "mysql-database: guacamole_db" >> /etc/guacamole/guacamole.properties
echo "mysql-username: guacamole_user" >> /etc/guacamole/guacamole.properties

# This is where you will want to change "PASSWORD"
echo "mysql-password: $mysqlpass" >> /etc/guacamole/guacamole.properties
ln -s /etc/guacamole /usr/share/tomcat8/.guacamole

# Restart Tomcat Service
service tomcat8 restart

#Setup MySQL
~/Setup/./mysql-db-create.sh guacamole_db guacamole_user $gpass

#Populate MySQL
cat guacamole-auth-jdbc-0.9.9/mysql/schema/*.sql | mysql -u root -p $mysqlpass guacamole_db

#Code Cleanup
# Cleanup Downloads
rm libjpeg-turbo-official_1.4.2_amd64.deb
rm guacamole-server-0.9.9.tar.gz
rm guacamole-auth-jdbc-0.9.9.tar.gz
rm mysql-connector-java-5.1.38.tar.gz

# Cleanup Folders
rm -rf mysql-connector-java-5.1.38/
rm -rf guacamole-auth-jdbc-0.9.9/
rm -rf guacamole-server-0.9.9/

# Cleanup RAM
~/Setup/./ram.sh

echo "credit goes to Chase Wright at http://chasewright.com/guacamole-with-mysql-on-ubuntu/"
sleep 5

#Also shout out to the following
#Cameron Hunt - Fix for the scope issue
#muru&glenn jackman @ askubuntu - Attempt to help fix the scope issue
#Philipp Klaus - For the RAM Script
#Chase Wright - for the rest of the script
