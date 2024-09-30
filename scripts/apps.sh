#!/usr/bin/env bash

brew update
brew upgrade
brew doctor

if [ -z "$HOMEBREW_CASK_OPTS" ]
then
  echo "Homebrew Cask options not set.";
  exit 1;
fi

brew install --cask 1password
brew install --cask android-file-transfer
brew install --cask appcleaner
brew install --cask caffeine
brew install --cask deluge
brew install --cask dropbox
brew install --cask google-drive
brew install --cask figma
brew install --cask homebrew/cask/flux
brew install --cask imageoptim
brew install --cask omnidisksweeper
brew install --cask slack
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask vlc
brew install --cask whatsapp
brew install --cask zoom
brew install --cask signal
brew install --cask discord
brew install --cask tuxguitar

brew install --cask google-chrome
brew install --cask google-chrome@canary
brew install --cask firefox

brew install --cask rectangle
brew install --cask postman
brew install --cask gitx

brew install --cask iterm2
brew install --cask docker
brew install --cask gifox

brew install vim
brew install neovim
brew install --cask sublime-text
brew install --cask visual-studio-code

rm -rf ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
mkdir ~/Library/Application\ Support/Sublime\ Text/Packages/User
cp ./configs/sublime-text/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
cp ./configs/sublime-text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
