#!/bin/bash

username=$(whoami)
lastLogin=$(last | head -2)
date=$(date | awk '{print $1, $2, $3, $5}')
uptime=$(uptime | awk '{print $1}')
diskSpace=$(df -h | awk '{print $1,$2,$3,$4}')
memoryInfo=$(cat /proc/meminfo | head -3)


printf "\n>>>>>>>>>>>>>> Welcome : $username!\n"

printf "\n>>>>>>>>>>>>>> Last Login Details : \n$lastLogin\n"

printf "\n>>>>>>>>>>>>>> Todays date is : $date.\n"

printf "\n>>>>>>>>>>>>>> The system uptime is : $uptime.\n"

printf "\n>>>>>>>>>>>>>> The Shell is : $SHELL\n"

printf "\n>>>>>>>>>>>>>> Here is the total disk utilization<<<<<<<<<<<<<<<<<<<<<< \n\n$diskSpace\n"

printf "\n>>>>>>>>>>>>>> Here is the memory info<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n\n$memoryInfo\n"


