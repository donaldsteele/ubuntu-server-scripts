#/bin/bash

source "settings.conf"

echo "Please enter root user MySQL password!"
    read rootpasswd
mysql -uroot -p${rootpasswd} -e "GRANT LOCK TABLES, SELECT ON *.* TO '${DBUSER}'@localhost IDENTIFIED BY '${DBPASSWORD}';"
mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"
