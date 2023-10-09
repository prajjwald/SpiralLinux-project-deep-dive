#!/bin/bash

# Make Debian Installer desktop file trusted
gio set ~/Desktop/install-debian.desktop metadata::trusted true
chmod a+x ~/Desktop/install-debian.desktop
## Stupid hack to avoid weird race condition in desktop-icons-NG when double-clicking this file so pkexec doesn't hang
sed -i 's|Exec=install-debian|Exec=sh -c "sleep 0.5; /usr/bin/install-debian"|g' ~/Desktop/install-debian.desktop


# Make Language Support desktop file trusted
gio set ~/Desktop/language-support.desktop metadata::trusted true
chmod a+x ~/Desktop/language-support.desktop
