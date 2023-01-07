#!/usr/bin/env bash

brew update && brew upgrade && brew doctor

brew install sqlite
brew install mysql
brew install postgres
brew install mongodb-community mongodb-community-shell mongodb-database-tools mongosh
brew install redis
