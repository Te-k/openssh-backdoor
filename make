#!/bin/bash

###########
#
# SETTING UP COLLORS
#
###########

red='\e[0;31m'
RED='\e[1;31m'
org='\e[0;33m33'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
GRN='\e[0;32m'
NC='\e[0m'

###########
#
# INSTALLING MAKE
#
###########

echo -e "\n${GRN}NOW TRYING TO INSTALL MAKE${NC}\n\n"

if [ -f /usr/bin/yum ];
then
   yum install -y make >> /dev/null
fi

if [ -f /usr/bin/apt-get ];
then
   apt-get update >> /dev/null
   apt-get install make -y >> /dev/null
fi

if [ -f /sbin/yast ];
then
   yast -i make >> /dev/null
fi

if [ -f /usr/bin/zypper ];
then
   zypper -n install make >> /dev/null
fi

if [ -f /usr/bin/make ]; then
echo -e "${BLUE}MAKE INSTALL${NC}           [ ${GRN}COMPLETED${NC} ]"
else
echo -e "${BLUE}MAKE INSTALL${NC}           [ ${RED}INCOMPLETED${NC} ]"
fi
