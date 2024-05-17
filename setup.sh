#!/bin/bash

# Created by Archisman Panigrahi (archisman-panigrahi)

mkdir $HOME/.local/share/icons
mkdir $HOME/.local/share/icons/hicolor
mkdir $HOME/.local/share/icons/hicolor/scalable
mkdir $HOME/.local/share/icons/hicolor/scalable/apps
cp screenrotator.svg $HOME/.local/share/icons/hicolor/scalable/apps/

current_dir=$(pwd)

[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Name=Screen Orientation Manager
Exec=python3 ${current_dir}/surface-RT-screen-rotator/ScreenOrientationManager.py
Icon=screenrotator
Categories=Utility;
