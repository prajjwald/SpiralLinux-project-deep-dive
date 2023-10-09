#!/bin/bash

ans="null"
while [[ "$ans" = "null" ]] || [[ "$ans" = "Set system language(s)" ]] || [[ "$ans" = "Install language packs" ]]; do
  ans=$(zenity  --list --title "Language support configuration" --hide-header --column "What to do?" "Set system language(s)" "Install language packs" 2> /dev/null); echo "ans=$ans"
  if [[ $ans = "Set system language(s)" ]]
  then
        pkexec /usr/sbin/reconfigure-locales-wrapper.sh
  elif [[ $ans = "Install language packs" ]]
  then
        pkexec /usr/sbin/synaptic --update-at-startup -i=Languages
  fi
done
