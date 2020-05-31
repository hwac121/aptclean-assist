#!/bin/bash

##################################
#         CHECK FOR ROOT         #
##################################

if [ "$EUID" -ne 0 ]
  then
  echo "You must run as root!"
  exit
fi

##################################
#        CHECK REQUIRED          #
##################################

# CHECKING FOR python3-apt
appcheck(){
echo -e "Checking for previous cups installation: $PKG_OK"
if [ -e /usr/share/lintian/overrides/python3-apt ]; then
  echo -e "python3-apt is already installed"
  sleep 1.5
  else
  echo "python3-apt not installed. Attempting to install python3-apt now..."
  sleep 1.5
  wget http://ftp.br.debian.org/debian/pool/main/p/python-apt/python3-apt_2.1.3_i386.deb
  dpkg -E python3-apt_2.1.3_i386.deb
fi
echo -e " "
clear
echo -e "python3-apt INSTALLATION COMPLETE!"
sleep 0.5
echo " "
}

##################################
#           SPLASH               #
##################################

splash(){
echo " _______  _______ _________ _______  _        _______  _______  _"
echo "(  ___  )(  ____ )\__   __/(  ____ \( \      (  ____ \(  ___  )( (    /|"
echo "| (   ) || (    )|   ) (   | (    \/| (      | (    \/| (   ) ||  \  ( |"
echo "| (___) || (____)|   | |   | |      | |      | (__    | (___) ||   \ | |"
echo "|  ___  ||  _____)   | |   | |      | |      |  __)   |  ___  || (\ \) |"
echo "| (   ) || (         | |   | |      | |      | (      | (   ) || | \   |"
echo "| )   ( || )         | |   | (____/\| (____/\| (____/\| )   ( || )  \  |"
echo "|/     \||/          )_(   (_______/(_______/(_______/|/     \||/    )_)"
echo " "
echo " _______  _______  _______ _________ _______ _________"
echo "(  ___  )(  ____ \(  ____ \\__   __/(  ____ \\__   __/"       
echo "| (   ) || (    \/| (    \/   ) (   | (    \/   ) ("
echo "| (___) || (_____ | (_____    | |   | (_____    | |"
echo "|  ___  |(_____  )(_____  )   | |   (_____  )   | |"
echo "| (   ) |      ) |      ) |   | |         ) |   | |"
echo "| )   ( |/\____) |/\____) |___) (___/\____) |   | |"
echo "|/     \|\_______)\_______)\_______/\_______)   )_("
echo " "
echo "ASSISTANT SCRIPT FOR aptsources-cleanup BY David Foerster"
sleep 3
echo " "
}

#####################################
#            MAIN SCRIPT            #
#####################################

splash
echo "Installing required files if needed."
appcheck
echo "Installing quick shortcut for aptsources-cleanup by David Foerster"
sleep 1
echo "You can find him on github as davidfoerster"
sleep 1
cp ac.data /usr/bin/aptclean
echo "To activate aptsources-cleanup simply type 'aptclean' anywhere in a terminal."
sleep 1
echo "Installation complete!"
