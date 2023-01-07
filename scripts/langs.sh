#!/usr/bin/env bash

brew update
brew upgrade

brew install openjdk

echo "RVM + Ruby"

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
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

go get -u golang.org/x/lint/golint
go get -u github.com/uudashr/gopkgs/cmd/gopkgs
go get -u github.com/ramya-rao-a/go-outline
go get -u github.com/nsf/gocode
go get -u golang.org/x/tools/cmd/goimports
go get -u github.com/rogpeppe/godef

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
