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

su - steam -c "curl -Lo linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh cs2server"
su - steam -c "$home_dir/cs2server auto-install"

ufw allow 27015/tcp
ufw allow 27015/udp
