# !/bin/bash

FREE_RAM_SPACE=$( free -mt | grep "Total" | awk '{print $4}')

THRESHOLD=500 # Limit upto which we need the RAM to be free

if [[ $FREE_RAM_SPACE -lt $THRESHOLD ]];
    then 
        echo "[WARNING] Low RAM available! Around ${FREE_RAM_SPACE} MB is free"
    else
        echo "Good to go! ${FREE_RAM_SPACE} MB RAM available"
fi