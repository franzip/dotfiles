#!/usr/bin/env bash

brew update
brew upgrade
brew doctor

if [ -z "$HOMEBREW_CASK_OPTS" ]
then
  echo "Homebrew Cask options not set.";
  exit 1;
fi

brew install 1password
brew install adobe-acrobat-reader
brew install android-file-transfer
brew install appcleaner
brew install caffeine
brew install deluge
brew install dropbox
brew install figma
brew install homebrew/cask/flux
brew install imageoptim
brew install omnidisksweeper
brew install slack
brew install spotify
brew install the-unarchiver
brew install vlc
brew install whatsapp
brew install zoom
brew install signal
brew install discord
brew install tuxguitar

brew install google-chrome
brew install google-chrome-canary
brew install firefox

brew install rectangle
brew install postman
brew install gitx

brew install iterm2
brew install --cask docker
brew install gifox

brew install vim
brew install neovim
brew install sublime-text
brew install visual-studio-code

rm -rf ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
mkdir ~/Library/Application\ Support/Sublime\ Text/Packages/User
cp ./configs/sublime-text/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
cp ./configs/sublime-text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
