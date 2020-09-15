#!/bin/sh
## First Configuration for Debian Server

if (( $EUID != 0 )); then
  echo "This must be run as root." 
  exit 1
fi

echo "$(tput bold ; tput setaf 6)Updating packages...$(tput sgr0)"
apt-get update -q -y
echo "$(tput bold ; tput setaf 6)Upgrading Dist...$(tput sgr0)"
apt-get dist-upgrade

echo "$(tput bold ; tput setaf 6)Installing Vim...$(tput sgr0)"
apt-get install vim -q -y
echo "$(tput bold ; tput setaf 6)Installing CURL...$(tput sgr0)"
apt-get install curl -q -y
echo "$(tput bold ; tput setaf 6)Installing Wget...$(tput sgr0)"
apt-get install wget -q -y
echo "$(tput bold ; tput setaf 6)Installing Git...$(tput sgr0)"
apt-get install git -q -y
