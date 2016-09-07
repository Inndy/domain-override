#!/bin/bash

echo "Make sure you have readed any file in this project before you install"
echo
echo -n "Install? (y/N)"
read confirm

if [ "$confirm" != "y" -a "$confirm" != "Y" ]
then
	echo "Not installed"
	exit 1
fi

if [ "$(uname)" = "Darwin" ]
then
	sudo cp domain-overrider /usr/local/bin/
	cp domain-overrider.json /usr/local/etc/
	sudo cp service-template/domain-overrider.plist /Library/LaunchAgents/
	sudo launchctl load -w /Library/LaunchAgents/domain-overrider.plist
else
	echo "Not supported OS"
fi
