#!/bin/bash

#########################################################################################################
# Some options to help you bypass APT update\upgrade\autoremove
# -qq options will not show you any output in the screen even (Errors)
# -yy options it will just install the application by the default option it will not ask you what will do
#########################################################################################################
#################
# Color variables
#################
cr=`tput setaf 1`
cg=`tput setaf 2`
cc=`tput setaf 6`
ce=`tput sgr0`
ow=`tput setab 0`
ob=`tput bold`
ou=`tput smul`

###########
#xuser LOGO
###########
echo -e "${ob}${cr}${ow}                            ____            _     ____            _       _   ${ce}"
echo -e "${ob}${cg}${ow}__  ___   _ ___  ___ _ __  | __ )  __ _ ___| |__ / ___|  ___ _ __(_)_ __ | |_ ${ce}"
echo -e "${ob}${cr}${ow}\ \/ / | | / __|/ _ \ '__| |  _ \ / _' / __| '_ \\___ \ / __| '__| | '_ \| __|${ce}"
echo -e "${ob}${cr}${ow} >  <| |_| \__ \  __/ |    | |_) | (_| \__ \ | | |___) | (__| |  | | |_) | |_ ${ce}"
echo -e "${ob}${cg}${ow}/_/\_\\__,_|___/\___|_|    |____/ \__,_|___/_| |_|____/ \___|_|  |_| .__/ \__|${ce}"
echo -e "${ob}${cr}${ow}  By a64 Exploiter"  

####################################
# Update\Upgrade & Cleaning Function
####################################
function xur_tplink() {
	echo -e "${ob}${ou}${cr}${ow}Identify TP-Link AC600 - Archer T2UH!!${ce}"
	apt install -yy build-essential git gcc linux-headers-4.11.0-kali1-all-amd64
	mkdir ~/Ins_TPLinkAC600
	cd ~/Ins_TPLinkAC600
	git clone https://github.com/chenhaiq/mt7610u_wifi_sta_v3002_dpo_20130916.git
	make clean
	make
	make install
	cp RT2870STA.dat  /etc/Wireless/RT2870STA/RT2870STA.dat
	echo -e "${ob}${ou}${cr}${ow}TP-Link Identity has been Installed - please reboot your system!!${ce}"
}

#Start the script
xur_tplink

# Script End
exit 0
