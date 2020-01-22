#!/usr/bin/env bash

# heroku
brew tap heroku/brew && brew install heroku
# aws
brew install awscli
brew install ec2-ami-tools
brew install ec2-api-tools
# azure
brew install azure-cli
# vbox + vagrant
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
# docker
brew cask install docker-toolbox
brew install kubernetes-cli
brew install kubernetes-helm
helm init
brew cask install minikube

brew cask install google-cloud-sdk
