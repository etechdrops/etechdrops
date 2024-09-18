#!/usr/bin/env bash

echo " "
echo "-------------------------"
echo "Configurando o teclado..."
sudo localectl --no-convert set-x11-keymap br abnt

echo " "
echo "----------------------"
echo "Habilitando serviços..."

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl enable --now cronie.service
sudo systemctl enable --now cups

echo " "
echo "----------------------------------------"
echo "Instalando Fontes..." 

wget -P ~/.local/share/fonts/ "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf" && \
    wget -P ~/.local/share/fonts/ "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf" && \
    wget -P ~/.local/share/fonts/ "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf" && \
    wget -P ~/.local/share/fonts/ "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"

echo " "
echo "----------------------"
echo "Copiando o theme Darkula e o profile para Konsole..."

cp -p ~/Code/etechdrops/configs/konsole/Dracula.colorscheme ~/.local/share/konsole/.
cp -p ~/Code/etechdrops/configs/konsole/eTechDrops.profile ~/.local/share/konsole/.

echo " "
echo "----------------------"
echo "Configurações de usuários do virtualbox..."

sudo usermod -aG vboxusers $USER
sudo usermod -aG vboxsf $USER