#!/usr/bin/env bash

brew install zsh zsh-completions zsh-syntax-highlighting

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~/.zshrc
cp -r ./oh-my-zsh/* ~/.oh-my-zsh/custom

git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

chsh -s /bin/zsh

reload


