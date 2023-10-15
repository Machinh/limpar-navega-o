#!/bin/bash

pkill -9 firefox
pkill -9 chromium
pkill -9 google-chrome
pkill -9 brave-browser

rm -rf ~/.mozilla/firefox/*/*.default/{Cache,Cache2,Datareporting,storage,cookies.sqlite,places.sqlite,formhistory.sqlite}
rm -rf ~/.config/chromium/Default/{Cache,Web Data,History,Login Data,Top Sites,Cookies}
rm -rf ~/.config/google-chrome/Default/{Cache,Web Data,History,Login Data,Top Sites,Cookies}
rm -rf ~/.config/BraveSoftware/Brave-Browser/Default/{Cache,Web Data,History,Login Data,Top Sites,Cookies}

cat /dev/null > ~/.bash_history
cat /dev/null > ~/.zsh_history

rm -rf ~/.cache/mozilla
rm -rf ~/.cache/chromium
rm -rf ~/.cache/google-chrome
rm -rf ~/.cache/BraveSoftware

history -c

sudo systemd-resolve --flush-caches

echo "Dados de navegação limpos."
