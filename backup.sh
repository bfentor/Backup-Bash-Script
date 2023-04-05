#!/usr/bin/env bash

# Made by Balazs Fentor
# Simple backup script that saves /home/USER to a compressed file

size=$(sudo du -sh $dir)
dir=/Users/balika/Documents/Scripting/Mac_Address_Randomizer/
backDir=/Users/
#backDir=/Users/


clear

date=$(date +'_%S_%M_%H_%m_%d_%Y')

bold=$(tput bold)
normal=$(tput sgr0)

sudo printf ""

echo "${bold}macOS Backup to Archive Utility"
echo "© 2023 Balazs Fentor, All rights reserved"

echo -e

#sudo tar -czf /Users/backup$date.tgz /Users/$USER

# test tar
sudo tar -czf ${backDir}backup$date.tgz $dir

echo -e
echo "Backup Info:"
echo -e

echo "Name: ${backDir}backup$date.tgz"
echo "Size: ${size}"

#echo "Name: /Users/$date"
#echo "Size: $(sudo du -sh /Users/$date)"