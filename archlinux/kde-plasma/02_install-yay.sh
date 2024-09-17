#!/usr/bin/env bash

echo " "
echo "-----------------"
echo "Instalando YAY..."
cd ~ && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si