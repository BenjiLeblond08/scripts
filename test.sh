#!/bin/sh
response=""
read -r -p "$(tput bold ; tput setaf 2)Start root Shell? [Y/n] $(tput sgr0)" response
if echo $response | grep -Eq '^[nN][oO]|^[nN]$'
then
	echo > /dev/null
else
	su -
fi
