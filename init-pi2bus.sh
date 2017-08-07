#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade

# instalace potrebnych aplikaci
sudo apt-get -y install htop mc openvpn ntp ntpdate isc-dhcp-server hostapd usb-modeswitch network-manager apache2

# nastaveni data, casu
sudo dpkg-reconfigure tzdata

# kopirovani promenych a konfiguracnich souboru
sudo cp interfaces /etc/network/interfaces
sudo cp hostapd.conf /etc/hostapd/hostapd.conf
sudo cp hostapd /etc/default/hostapd
sudo cp isc-dhcp-server /etc/default/isc-dhcp-server
sudo cp dhcpd.conf /etc/dhcp/dhcpd.conf
sudo mkdir -p /opt/pi2bus
sudo mkdir -p /opt/pi2bus/settings
sudo cp download /opt/pi2bus/settings/download
sudo cp lan /opt/pi2bus/settings/lan
sudo cp maxbandwidth /opt/pi2bus/settings/maxbandwidth
sudo cp subnet /opt/pi2bus/settings/subnet
sudo cp upload /opt/pi2bus/settings/upload
sudo cp wan /opt/pi2bus/settings/wan

# reseni bug na raspberry
# raspberry, prestoze ma v souboru /etc/network/interfaces nastaveno static na sitovkach, si vezme IP z dhcp pokud je dostupne
# nasledujici vypnuti sluzby client dhcp s nazvem dhcpcd, resi bug pomoci tohoto workaround
sudo systemctl stop dhcpcd
sudo systemctl disable dhcpcd
sudo systemctl daemon-reload
sudo systemctl restart networking
sudo shutdown -r now
