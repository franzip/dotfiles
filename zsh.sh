#!/usr/bin/env bash

brew install zsh zsh-completions zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~/.zshrc
cp -r ./oh-my-zsh/* ~/.oh-my-zsh/custom

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

chsh -s /bin/zsh

reload
