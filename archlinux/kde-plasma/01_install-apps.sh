#!/usr/bin/env bash

echo " "
echo "---------------------"
echo "Atualizando sistema..."

sudo pacman -Suy

echo " "
echo "---------------------"
echo "Instalando os apps..."
sudo pacman -S --needed \
  fastfetch \
  git \
  base-devel \
  curl \
  wget \
  nano \
  vim \
  networkmanager-openvpn \
  zsh \
  zip \
  unzip \
  ffmpeg \
  ntfs-3g \
  discord \
  obsidian \
  syncthing \
  kubectl \
  docker \
  docker-compose \
  helm \
  dbeaver \
  rclone \
  spectacle \
  obs-studio \
  kdenlive \
  audacity \
  gnome-boxes \
  libreoffice-fresh \
  libreoffice-fresh-br \
  imagemagick \
  gimp \
  cups \
  cups-pdf \
  cups-filters \
  hplip \
  print-manager \
  system-config-printer \
  kdeconnect \
  dolphin \
  dolphin-plugins \
  ark \
  ffmpegthumbs \
  kdegraphics-thumbnailers \
  kio-admin \
  kio-extras \
  kio-gdrive \
  libappindicator-gtk3 \
  phonon-qt6 \
  xwaylandvideobridge \
  inetutils \
  speech-dispatcher \
  telegram-desktop \
  steam \
  fzf \
  bitwarden \
  kalk \
  kfind \
  okular \
  spectacle \
  vivaldi \
  intel-media-sdk \
  transmission-qt \
  python-pip \
  blueman \
  bluez \
  bluez-utils \
  intel-ucode \
  openssh \
  cronie \
  code \
  zellij \
  kimageformats \
  kdegraphics-thumbnailers \
  gwenview \
  virtualbox \
  virtualbox-guest-iso \
  virtualbox-guest-utils \
  dosfstools
