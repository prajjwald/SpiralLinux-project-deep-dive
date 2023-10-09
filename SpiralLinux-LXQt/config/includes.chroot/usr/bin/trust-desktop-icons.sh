#!/bin/bash

### Make Debian Installer desktop file trusted
sleep 1 ## Stupid hack to avoid occasional race condition
gio set ~/Desktop/install-debian.desktop metadata::trust true
chmod a+x ~/Desktop/install-debian.desktop

### Make Language Support desktop file trusted
gio set ~/Desktop/language-support.desktop metadata::trust true
chmod a+x ~/Desktop/language-support.desktop
