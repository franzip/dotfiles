#!/usr/bin/env bash

brew update
brew upgrade

brew install openjdk

command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable --ruby

rvm gemset create system
rvm gemset use system
ruby -v && rvm gemset list && gem list

echo "Node stuff"

brew install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

brew install yarn
npm install -g react-devtools
npm install -g localtunnel
npm install -g npm-check-updates
npm install -g yalc

nvm install --lts
nvm alias default node

echo "Golang stuff"

brew install go
brew install goenv

echo "Python stuff"

brew install python
pip3 install --upgrade setuptools
pip3 install --upgrade pip
brew install pyenv
brew install pyenv-virtualenv
brew install uv

echo "Rust"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

brew cleanup

echo `type rvm | head -n 1`
