#!/bin/bash

# Created by Archisman Panigrahi (archisman-panigrahi)

mkdir -p $HOME/.local/share/icons/hicolor/scalable/apps
cp screenrotator.svg $HOME/.local/share/icons/hicolor/scalable/apps/

current_dir=$(pwd)
TARGET_DIR="$HOME/.local/share/applications"
TARGET_FILE="$TARGET_DIR/surface-rt-screen-rotator.desktop"
cd "$TARGET_DIR"

cat > "$TARGET_FILE" <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Name=Screen Orientation Manager
Exec=python3 ${current_dir}/ScreenOrientationManager.py
Icon=screenrotator
Categories=Utility;
EOL

chmod +x "$TARGET_FILE"