#!/bin/bash

sudo cp stat /opt/pi2bus/create-stat
sudo cp sync-time /opt/pi2bus/sync-time
sudo cp index.html /var/www/html/index.html
sudo cp menu.html /var/www/html/menu.html
sudo chmod 755 /opt/pi2bus/create-stat
sudo chown root:root /opt/pi2bus/create-stat

crontab -l > mycron
echo "@reboot sleep 60 && cd /opt/pi2bus && sync-time >/dev/null 2>&1" >> mycron
echo "*/1 * * * * cd /opt/pi2bus && ./create-stat >/dev/null 2>&1" >> mycron
echo "* */1 * * * cd /opt/pi2bus && ./sync-time >/dev/null 2>&1" >> mycron
crontab mycron
rm mycron
