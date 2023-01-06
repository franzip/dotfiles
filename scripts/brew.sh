#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install command line tools
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Get ready to brew
brew update
brew upgrade
brew doctor

# Tap
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap bramstein/webfonttools
brew tap homebrew/cask-drivers
brew tap homebrew/cask-versions
brew tap golangci/tap
brew tap heroku/brew
brew tap mongodb/brew
