## Screen Rotator for Surface RT running GNU/Linux
![screenshot](Screenshots/screenshot1.png)
Based on [theGeekyLad/GtkExperiments](https://github.com/theGeekyLad/GtkExperiments)
This app integrates twofing to enable two-finger gestures after screen rotation.

Tested in Surface RT running Raspberry Pi OS.
### Installation

```
wget https://raw.githubusercontent.com/archisman-panigrahi/postinstall-scripts/main/srt-screen-rotation.sh
bash srt-screen-rotation.sh
```


**Note**: You're required to be on an **Xorg** session for results as unfortunately _Wayland_ isn't supported at the moment.

### Credits

- Thanks to @rubo77, for this project builds upon his shell script.
- Thanks to @theGeekyLad, as this project is a slightly modified version of their python application.S
- The icon is based on GuLinux/ScreenRotator. Thanks to @GuLinux.
