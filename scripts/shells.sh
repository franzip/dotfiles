#!/usr/bin/env bash

brew install bash
brew install bash-completion2

brew install zsh zsh-completions zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting romkatv/powerlevel10k/powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~
cp ./.{aliases,exports,extra,functions,envman} ~/.oh-my-zsh/custom

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

cp ./.p10k.zsh ~

chsh -s /bin/zsh

reload

