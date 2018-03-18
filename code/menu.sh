#!/bin/bash
clear;
titleMain="------Menu Sniff - Scapy Tool--------"
titleA="------Run Atack DHCP Server - Scapy Tool--------"
titleB="------Run Server DHCP Fake - Scapy Tool--------"
titleC="------Run Sniff - Packet DHCP - Scapy Tool --------"
titleD="------Show Capture MAC & IP - Scapy Tool --------"
errorMenu="------Sorry, your selection is incorrect !!!--------"
echo $titleMain
echo
# Definition manu script
echo "  Select one of the options"
echo "1) Attack DHCP Server"
echo "2) Run Server DHCP Fake"
echo "3) Run Sniff - Packet DHCP"
echo "4) Show Capture MAC & IP"
echo
#selection menu item
while [ true ]; do
  read -p ' >>> Enter your option : ' option
  if [[ $option == 1 ]]; then
    echo $titleA
    #INSERT CODE
    break
  fi
  if [[ $option == 2 ]]; then
    echo $titleB
    #INSERT CODE
    break
  fi
  if [[ $option == 3 ]]; then
    echo $titleC
    #INSERT CODE
    break
  fi
  if [[ $option == 4 ]]; then
    echo $titleD
    #INSERT CODE
    break
  fi
  if [[ $option > 4  || $option < 1 ]]; then
    echo $errorMenu
  fi
done
echo "Process Finalized ...!"
