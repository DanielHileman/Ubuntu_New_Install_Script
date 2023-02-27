#!/bin/sh

# This bash script is used to automate the installation of software
# usually installed on a new Unbuntu installation.

# Last updated on 11/19/2021.

# Do a full update and upgrade to make sure all packages are updated.
sudo apt -y update
sudo apt -y upgrade

# Install ingle packages straight from Ubuntu's repository
sudo apt install -y bat
sudo apt install -y bmon
sudo apt install -y calibre
sudo apt install -y chromium-browser
sudo apt install -y cmatrix
sudo apt install -y cmus
sudo apt install -y cowsay
sudo apt install -y cpufetch
sudo apt install -y curl
sudo apt install -y elisa
sudo apt install -y spiphany-browser
sudo apt install -y esa
sudo apt install -y evolution
sudo apt install -y flatpak
sudo apt install -y fonts-powerline
sudo apt install -y fortune
sudo apt install -y fzf
sudo apt install -y geary
sudo apt install -y git
sudo apt install -y glances
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-software-plugin-flatpak
sudo apt install -y googler
sudo apt install -y guake
sudo apt install -y hollywood
sudo apt install -y htop
sudo apt install -y lolcat
sudo apt install -y lynx
sudo apt install -y mc
sudo apt install -y mpg123
sudo apt install -y mplayer
sudo apt install -y mtr
sudo apt install -y ncdu
sudo apt install -y neofetch
sudo apt install -y nload
sudo apt install -y nmap
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y openssh-server
sudo apt install -y pydf
sudo apt install -y python3-pip #https://itsfoss.com/install-pip-ubuntu/
sudo apt install -y speedtest-cli
sudo apt install -y ranger
sudo apt install -y sl
sudo apt install -y terminator
sudo apt install -y timeshift
sudo apt install -y torbrowser-launcher
sudo apt install -y trash-cli
sudo apt install -y ubuntu-restricted-extras
sudo apt install -y wget
sudo apt install -y xfce4
sudo apt install -y xfce4-goodies

# Refresh snap repositories.
sudo snap refrsh

# Snap installs
sudo snap install code --classic
sudo snap install cointop
sudo snap install cool-retro-term --classic
sudo snap install discord
sudo snap install foliate
sudo snap install mapscii
sudo snap install vlc

# npm install of Wikit. https://www.tecmint.com/wikipedia-commandline-tool/
sudo npm install wikit -g

# Install hacker news through Python. https://github.com/donnemartin/haxor-news#pip-installation
sudo pip3 install haxor-news

# Install NewsRoom / Tech news from command line. https://www.tecmint.com/newsroom-commandline-linux-news-reader/
sudo npm install -g newsroom-cli

# Download & make Sneakers program. https://itsfoss.com/sneakers-movie-effect-linux/
git clone https://github.com/bartobri/no-more-secrets.git
cd ./no-more-secrets
make nms
make sneakers
sudo make install

# Install Private Internet Access. This is no longer being used.
cd ~/Downloads
wget https://www.privateinternetaccess.com/installer/pia-nm.sh
sudo bash ./pia-nm.sh

# Install Flatpak and add repository.
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install blessed-contrib. https://github.com/yaronn/blessed-contrib
git clone https://github.com/yaronn/blessed-contrib.git
cd blessed-contrib
npm install
# To run blessed-contrib run the command: node ./examples/dashboard.js

# Install Bashtop and add the repository. https://github.com/aristocratos/bashtop
sudo add-apt-repository ppa:bashtop-monitor/bashtop -y
sudo apt update
sudo apt install -y bashtop

# Install VeraCrypt and add the repository.
sudo add-apt-repository ppa:unit193/encryption -y
sudo apt update
sudo apt install -y veracrypt

# Install Brave Browser and add the repository.
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install Atom text editor.
sudo snap install atom --classic

# After all packages have been installed, do a autoremove to clean up.
sudo apt -y autoremove

# Transfer the file over and then install Visual Studio Code.
cd ~/Downloads
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./

# Transfer file over to downloads folder. Then install Google Chrome.
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Add date time for history line to the .bashrc file.
cd ~
sudo echo -e "HISTTIMEFORMAT="%m-%d-%Y %T " >> ~/.bashrc