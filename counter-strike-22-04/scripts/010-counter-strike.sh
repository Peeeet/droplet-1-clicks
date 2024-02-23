#!/bin/sh

home_dir=/home/steam

# Create the anaconda user
useradd --home-dir $home_dir \
        --shell /bin/bash \
        --create-home \
        --system \
        steam

# Setup the home directory
chown -R steam: $home_dir

mkdir -p "$home_dir/steamlibrary"

# sudo add-apt-repository -y multiverse
# sudo dpkg --add-architecture i386
# sudo apt update
# echo "steamcmd steam/question select I AGREE" | sudo debconf-set-selections
# sudo NEEDRESTART_MODE=a apt install -y lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd

#su - steam -c "curl -Lo linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh cs2server"
#su - steam -c "$home_dir/cs2server auto-install"

ufw allow 27015/tcp
ufw allow 27015/udp
