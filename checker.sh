#!/bin/bash

# colors ANSI
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37


RED="\e[41m"
YELLOW="\e[43m"
GREEN="\e[42m"
NC="\e[0m" # No Color

if (( $(ps -ef | grep -v grep | grep ntp | wc -l) > 0 )); then
	SERVICE_NTP="$GREEN Service is running $NC"
else
	SERVICE_NTP="$RED Error              $NC"
fi

if (( $(ps -ef | grep -v grep | grep dhcpd | wc -l) > 0 )); then
	SERVICE_DHCPD="$GREEN Service is running $NC"
else
	SERVICE_DHCPD="$RED Error            $NC"
fi

if (( $(ps -ef | grep -v grep | grep hostapd | wc -l) > 0 )); then
	SERVICE_HOSTAPD="$GREEN Service is running $NC"
else
	SERVICE_HOSTAPD="$RED Error              $NC"
fi

if (( $(ps -ef | grep -v grep | grep apache2 | wc -l) > 0 )); then
	SERVICE_APACHE2="$GREEN Service is running $NC"
else
	SERVICE_APACHE2="$RED Error              $NC"
fi

clear
echo -e "|--------------------------------------|----------------------|"
echo -e "|  Checker                             |  Status              |"
echo -e "|--------------------------------------|----------------------|"
echo -e "| Status service ntp:                  | $SERVICE_NTP |"
echo -e "| Status service dhcpd:                | $SERVICE_DHCPD |"
echo -e "| Status service hostapd:              | $SERVICE_HOSTAPD |"
echo -e "| Status service apache2:              | $SERVICE_HOSTAPD |"
echo -e "|--------------------------------------|----------------------|"
