#!/bin/bash

### Do NOT run this script with sudo

sudo apt install -y git
## Install twofing
cd /tmp
git clone https://github.com/plippo/twofing
sudo apt install -y build-essential libx11-dev libxtst-dev libxi-dev x11proto-randr-dev libxrandr-dev xserver-xorg-input-evdev xserver-xorg-input-evdev-dev
cd twofing
make
sudo make install

## Screen Orientation Manager
cd
git clone https://github.com/archisman-panigrahi/surface-RT-screen-rotator
cd surface-RT-screen-rotator
bash move-files-around.sh
cp $HOME/.local/share/applications/surface-rt-screen-rotator.desktop $HOME/.config/autostart/

echo "Now Reboot!!"
