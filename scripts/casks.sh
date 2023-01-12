#!/usr/bin/env bash

brew update
brew upgrade

brew install 1password
brew install adobe-acrobat-reader
brew install android-file-transfer
brew install appcleaner
brew install caffeine
# brew install deluge
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

brew install google-chrome
brew install google-chrome-canary
brew install firefox

brew install spectacle
brew install postman
brew install rowanj-gitx
brew install sublime-text
brew install visual-studio-code
brew install iterm2
brew install gifcapture
brew install --cask sequel-ace
brew install pgadmin4

cp ./configs/spectacle.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null
rm -rf ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
mkdir ~/Library/Application\ Support/Sublime\ Text/Packages/User
cp -r ./configs/sublime-text ~/Library/Application\ Support/Sublime\ Text/Packages/User 2> /dev/null
