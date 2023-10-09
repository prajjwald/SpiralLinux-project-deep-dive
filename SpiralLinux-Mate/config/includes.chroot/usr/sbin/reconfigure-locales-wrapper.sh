#!/bin/bash
rm /etc/default/locale
/usr/sbin/dpkg-reconfigure locales --frontend gnome
