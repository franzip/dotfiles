#!/usr/bin/env bash

brew update
brew upgrade

brew install openjdk

echo "RVM + Ruby"

command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby

rvm gemset create system
rvm gemset use system
ruby -v && rvm gemset list && gem list

echo "Node + JS stuff"
brew install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
brew install yarn
npm install -g react-devtools
npm install -g nodemon
npm install -g prettyjson
npm install -g node-inspector
npm install -g localtunnel
npm install -g npm-check-updates
npm install -g yo

nvm install --lts
nvm alias default node

echo "Golang stuff"

brew install go
brew install goenv

go install golang.org/x/lint/golint@latest
go install github.com/uudashr/gopkgs/cmd/gopkgs@latest
go install github.com/ramya-rao-a/go-outline@latest
go install github.com/nsf/gocode@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/rogpeppe/godef@latest

echo "Python stuff"

brew install python
pip3 install --upgrade setuptools
pip3 install --upgrade pip
pip3 install pep257
pip3 install pep8
pip3 install pylint
brew install pyenv-virtualenv
brew install pipenv

echo "Rust"

brew install rustup
rustup-init
rustc --version

brew cleanup

echo `type rvm | head -n 1`
