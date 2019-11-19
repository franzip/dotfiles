#!/usr/bin/env bash

brew update
brew upgrade

# daily
brew cask install 1password
brew cask install adobe-acrobat-reader
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install caffeine
brew cask install deluge
brew cask install dropbox
brew cask install google-hangouts
brew cask install gpg-suite
brew cask install flux
brew cask install imageoptim
brew cask install evernote
brew cask install gyazo
brew cask install omnidisksweeper
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install the-unarchiver
brew cask install vlc
brew cask install whatsapp
brew cask install zoomus

# browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install torbrowser

# dev
brew cask install postman
brew cask install rowanj-gitx
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install iterm2
# brew cask install sqlpro-studio
brew cask install dash
brew cask install spectacle

brew cleanup && brew cask cleanup
