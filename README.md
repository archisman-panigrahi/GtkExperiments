## Screen Rotator for Surface RT running GNU/Linux
![screenshot](Screenshots/screenshot1.png)
Based on [theGeekyLad/GtkExperiments](https://github.com/theGeekyLad/GtkExperiments)
This app integrates twofing to enable two-finger gestures after screen rotation.

Tested in Surface RT [running Raspberry Pi OS](https://openrt.gitbook.io/open-surfacert/surface-rt/linux/root-filesystem/distros/raspberry-pi-os).
### Installation

The following installation script installs [twofing](https://github.com/plippo/twofing) for two-finger gestures, and then installs this tool. 

```
wget https://raw.githubusercontent.com/archisman-panigrahi/postinstall-scripts/main/srt-screen-rotation.sh
bash srt-screen-rotation.sh
```
If you don't want to set up twofing, and only want to use this tool, then use the `setup.sh` in this repository instead.

**Note**: You're required to be on an **Xorg** session for results as unfortunately _Wayland_ isn't supported at the moment.

### Credits

- Thanks to @rubo77, for this project builds upon his shell script.
- Thanks to @theGeekyLad, as this project is a slightly modified version of their python application.
- Thanks to @Plippo for creating [twofing](https://github.com/plippo/twofing).
- The icon is based on GuLinux/ScreenRotator. Thanks to @GuLinux.
