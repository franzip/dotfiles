#!/usr/bin/env bash

brew update && brew upgrade && brew doctor

# Install sqlite
brew install sqlite
cask install sqlitebrowser

# MySQL + autostart
brew install mysql
mysqld --initialize --log-error-verbosity --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
cask install sequel-pro
cask install mysqlworkbench

# Postgres + autostart
brew install postgres
initdb `brew --prefix`/var/postgres/data -E utf8
createdb `whoami`
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
cask install psequel

# MongoDB + autostart
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
cask install mongochef

# Redis + autostart
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# CouchDB + autostart
brew install couchdb
ln -sfv /usr/local/opt/couchdb/*.plist ~/Library/LaunchAgents

# Final Checks
mongo --version && mongod --version
psql --version
sqlite3 --version
mysql --version
redis-cli --version
echo "Reminder: set the root password: mysql -u root password 'yourpass'"
