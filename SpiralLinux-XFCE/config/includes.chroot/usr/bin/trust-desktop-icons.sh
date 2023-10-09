#!/bin/bash

### Make Debian Installer desktop file trusted
sleep 1 ## Stupid hack to avoid occasional race condition
gio set --type=string ~/Desktop/install-debian.desktop metadata::trusted true
gio set --type=string ~/Desktop/install-debian.desktop metadata::xfce-exe-checksum "$(sha256sum ~/Desktop/install-debian.desktop | cut -d ' ' -f1)"
chmod a+x ~/Desktop/install-debian.desktop

### Make Language Support desktop file trusted
gio set --type=string ~/Desktop/language-support.desktop metadata::trusted true
gio set --type=string ~/Desktop/language-support.desktop metadata::xfce-exe-checksum "$(sha256sum ~/Desktop/language-support.desktop | cut -d ' ' -f1)"
chmod a+x ~/Desktop/language-support.desktop
