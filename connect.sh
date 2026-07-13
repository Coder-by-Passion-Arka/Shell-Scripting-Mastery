# !/bin/bash

let site
read -p "Enter the full domain name (e.g. 'www.google.com') of the site you want to check " site

ping -c 4 ${site} # send 4 packets to the mentioned site
sleep 2s

if [[ $? -eq 0 ]];
    then
        echo "Successfully connected to ${site}"
else
    echo "Unable to connect to site ${site}"
fi