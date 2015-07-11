#!/usr/bin/env bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp -r ./oh-my-zsh/* ~/.oh-my-zsh/custom
