#!/usr/bin/env bash

# Get ready to brew
brew update
brew upgrade
brew doctor

# Tap
brew tap bramstein/webfonttools
brew tap golangci/tap
brew tap heroku/brew
brew tap mongodb/brew
brew tap dbcli/tap
brew tap hashicorp/tap

sudo spctl --master-disable

echo "Change settings in: System Settings > Privacy & Security > Security"
