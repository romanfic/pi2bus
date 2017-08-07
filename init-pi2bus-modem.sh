#!/bin/bash

echo "SIM zabecpecte PINem. Snizise tim zneuziti SIM."
echo ""
echo "Zadejte PIN pro SIM:"
read PIN

sudo nmcli connection add con-name O2LTE type gsm ifname ttyUSB0 apn internet
sudo nmcli connection modify O2LTE gsm.pin $PIN

