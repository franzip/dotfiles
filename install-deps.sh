#!/usr/bin/env bash

echo "Installing rvm..."
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby
rvm install ruby
rvm --default use ruby-2.2.1

echo "Installing node.js"
brew install node
echo "Installing nave"
brew install nave

brew cleanup

echo "Ok, install is done. Let's check if we broke anything..."
# Nave/Node check
echo "Nave version:"
echo `nave ls`
echo "Installed node.js version:"
echo `node -v`
# rvm check
echo "Installed rvm version:"
echo `rvm -v`
# "rvm is a function" test
# this will probably fail right now, just a reminder to source rvm
echo `type rvm | head -n 1`

# change to bash 4 (installed by homebrew)
echo "Switching to Bash 4..."
BASHPATH=$(brew --prefix)/bin/bash
sudo echo $BASHPATH >> /etc/shells
chsh -s $BASHPATH # will set for current user only.
echo "Checking Bash version..."
# check if everything's ok (should be /usr/local/bin/bash and 4.x)
echo $BASH && echo $BASH_VERSION

# cleanup
brew cleanup
brew cask cleanup
brew doctor
