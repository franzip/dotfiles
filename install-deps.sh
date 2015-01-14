#!/usr/bin/env bash

# Install command line tools
xcode-select --install

# Get homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get ready to brew
brew update
brew doctor

echo "Tapping brew things."
# tap all the things directly here
brew tap homebrew/dupes
brew tap caskroom/cask
brew tap homebrew/python
brew tap homebrew/apache
brew tap homebrew/versions

echo "Installing Cask..."
# Install Cask
brew install caskroom/cask/brew-cask
echo "Tapping casky things."
# tap all the things directly here
brew tap caskroom/fonts
brew tap caskroom/versions

brew update
brew upgrade brew-cask
brew update
brew cleanup
brew cask cleanup
brew doctor

echo "Installing rvm..."
# rvm is cool, end of the story
curl -L https://get.rvm.io | bash -s stable --ruby
rvm --default use ruby-2.2.0

echo "Installing Vundle for vim..."
# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# You can install node directly through nave
# Beware, installing both brewed and nave's node could lead to annoying homebrew's warnings.
# Just avoid to issue 'nave usemain version' (as this overwrite usr/local/bin/node)
echo "Installing nave and node.js"
brew install node
brew install nave

# install all the things
echo "Proceeding with the main install. This will take a looooot of time... go get a coffee. Many of them actually."
echo "Installing fonts..."
./brew-fonts.sh
echo "Installing bins..."
./brew.sh
echo "Installing shiny things..."
./brew-cask.sh

brew cleanup

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

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
# check if Vundle was installed correctly
echo "Setting .vimrc in place..."

cp ~/Dropbox/dotfiles/.vimrc ~/.vimrc
checkvundle() {
  if gvim +PluginList 2>/dev/null; then
      echo "Vundle is installed, yay!"
  else
      echo "Something went wrong with Vundle install. Check your ~/.vim"
  fi
}
checkvundle
unset -f checkvundle

mvim +PluginInstall

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

