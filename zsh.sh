#!/usr/bin/env bash

brew install zsh zsh-completions

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~/.zshrc
cp -r ./oh-my-zsh/* ~/.oh-my-zsh/custom

chsh -s /bin/zsh
