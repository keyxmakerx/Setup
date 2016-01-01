#MySql Password
while true; do
read -p "Password for MySQL " mysqlpass;
echo "Confirm Password ";
read -p "Re-enter password" mysqlpassverify;
if (echo "mysqlpass") = (echo "mysqlpassverify");
  echo "Success"
  break;
else; 
  echo "failed, please try again"
fi;
done;
