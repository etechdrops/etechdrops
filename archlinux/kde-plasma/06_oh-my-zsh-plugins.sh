#!/usr/bin/env bash

echo " "
echo "----------------------------------------"
echo "Instalando plugins e temas..." 
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k && \
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

echo " "
echo "----------------------------------------"
echo "#### Copiando zshrc e zshrc_history..."
cp -p ~/.zshrc ~/.zshrc.bkp && cp -p ~/Code/Personal/playground/zshrc.bkp ~/.zshrc