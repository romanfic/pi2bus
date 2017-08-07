#!/bin/bash

sudo sed -i -e 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
echo "#!/bin/sh" | sudo tee /etc/network/if-pre-up.d/init-firewall
echo "/sbin/iptables-restore < /opt/pi2bus/settings/ipv4iptables.config" | sudo tee -a /etc/network/if-pre-up.d/init-firewall
sudo cp ipv4iptables.config /opt/pi2bus/settings/ipv4iptables.config
sudo chmod 755 /etc/network/if-pre-up.d/init-firewall
sudo chown root:root /etc/network/if-pre-up.d/init-firewall
sudo shutdown -r now
