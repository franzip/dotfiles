#!/usr/bin/env bash

brew install bash
brew install bash-completion2

brew install zsh zsh-completions zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting romkatv/powerlevel10k/powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~
cp ./.{aliases,exports,path,extra,functions} ~/.oh-my-zsh/custom
cp ./env/* ~/.oh-my-zsh/custom

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

cp ./.p10k.zsh ~

reload

