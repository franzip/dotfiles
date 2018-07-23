#!/usr/bin/env bash

brew update
brew upgrade
brew cask upgrade

# daily
brew cask install 1password
brew cask install adobe-acrobat-reader
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install caffeine
brew cask install deluge
brew cask install dropbox
brew cask install google-drive-file-stream
brew cask install google-hangouts
brew cask install flux
brew cask install gimp
brew cask install imageoptim
brew cask install evernote
brew cask install gpgtools
brew cask install gyazo
brew cask install omnidisksweeper
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install spotify-notifications
brew cask install the-unarchiver
brew cask install vlc
brew cask install wireshark

# browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install torbrowser

# dev
brew cask install postman
brew cask install rowanj-gitx
brew cask install sublime-text
brew cask install iterm2

brew cleanup && brew cask cleanup
