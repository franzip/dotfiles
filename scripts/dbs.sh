#!/usr/bin/env bash

brew update
brew upgrade
brew doctor

if [ -z "$HOMEBREW_CASK_OPTS" ]
then
  echo "Homebrew Cask options not set.";
  exit 1;
fi

brew install sqlite
brew install mysql
brew install postgres
brew install mongodb-community
brew install redis
brew install dbeaver-community
brew install pgcli
