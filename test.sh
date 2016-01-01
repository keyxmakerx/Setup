#!/bin/bash
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
