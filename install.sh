#!/bin/sh
apt-get update
apt-get install git
apt-get install python3-venv
apt-get install python3-pip
apt-get install curl

cd ~/Desktop
git clone https://github.com/njcssa/summer2019_wombatgame.git
cd summer2019_wombatgame
python3 -m venv venv
. ./venv/bin/activate
pip install -r requirements.txt


arch=$(eval "uname -m")
sixfourbit="x86_64"
threetwobit="i686"
if [ "$arch" = "$sixfourbit" ]
then
    # installing vscode for 64bit systems
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    apt-get install apt-transport-https
    apt-get update
    apt-get install code
elif [ "$arch" = "$threetwobit" ]
then
    # installing vscode for 32bit systems
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
    sh -c 'echo "deb [arch=i386] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    apt-get install apt-transport-https
    apt-get update
    apt-get install code
fi
