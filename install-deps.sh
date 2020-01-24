#!/usr/bin/env bash

echo "Installing rvm..."
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby --auto-dotfiles

echo "Installing node.js"
brew install node
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

brew cleanup

echo `type rvm | head -n 1`

# change to bash 4 (installed by homebrew)
BASHPATH=$(brew --prefix)/bin/bash
sudo echo $BASHPATH >> /etc/shells
chsh -s $BASHPATH # will set for current user only.
echo "Checking Bash version..."
# check if everything's ok (should be /usr/local/bin/bash and 4.x)
echo $BASHPATH && echo $BASH_VERSION

# cleanup
brew cleanup
brew doctor
