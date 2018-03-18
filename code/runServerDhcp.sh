#!/bin/bash
#!/bin/sh
clear;
ls /etc/default/
pwd
exec bash

alias route2="cd /etc/dhcp/"
pwd
titleMain="------Configuration - Server DHCP Fake --------"
titleA="------Enter the Range IP Address --------"
titleB="------Enter the Gatewey Address --------"
titleC="------Enter the Subnet Mask --------"
titleD="------sd--------"
errorMenu="------Sorry, an error has occurred !!!--------"
echo $titleMain
echo
read -p ' >>> Enter your network interface : ' iface
echo

# Definition manu script
echo "  Select one of the options"
echo "1) Attack DHCP Server"
echo "2) Run Server DHCP Fake"
echo "3) Run Sniff - Packet DHCP"
echo "4) Show Capture MAC & IP"
echo
read -p ' >>> Enter your option : ' option
