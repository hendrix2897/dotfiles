#!/bin/sh
USER_HOME_DIR=$(eval echo ~$USER)
DOTFILES_URL="https://github.com/hendrix2897/dotfiles"
rm -rf /etc/apt/sources.list
cat <<EOF > /etc/apt/sources.list
# Sid and only sid
deb https://ftp.debian.org/debian/ sid contrib main non-free non-free-firmware
EOF
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install icewm nm-tray idesk lightdm vim htop neofetch build-essential bison flex libssl-dev git -y
mkdir -p "$USER_HOME_DIR"/gits
git clone "$DOTFILES_URL" "$USER_HOME_DIR"/gits/dotfiles 
mkdir -p "$USER_HOME_DIR"/.icewm
cp -r "$USER_HOME_DIR"/gits/dotfiles/icewm/. "$USER_HOME_DIR"/.icewm/

