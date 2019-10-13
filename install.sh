#!/bin/bash

ACSDIR=/etc/acs/

if [ "$(id -u)" -ne 0 ]; then
	echo 'Please run as root or using sudo.'
	exit 1
fi

if ! [ -x "$(command -v sqlite3)" ]; then
	echo 'Error : sqlite3 is not installed.' >&2
	exit 1
fi

if [ -d $ACSDIR ]; then
	while true; do
		read -p "ACS is already installed. Do you want to remove and reinstall? [y/n]" yn
		case $yn in
			[Yy]* ) rm -r $ACSDIR; break;;
			[Nn]* ) exit 0;;
			* ) echo "please answer yes or no.";;
		esac
	done
fi
mkdir $ACSDIR
echo "we are here"
