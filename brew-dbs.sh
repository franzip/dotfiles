#!/usr/bin/env bash

brew update && brew upgrade && brew doctor

# Install sqlite
brew install sqlite

# MySQL + autostart
brew install mysql
mysqld --initialize --log-error-verbosity --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql

# Postgres + autostart
brew install postgres
initdb `brew --prefix`/var/postgres/data -E utf8
createdb `whoami`
brew install pgcli

# MongoDB + autostart
brew tap mongodb/brew
brew install mongodb-community@4.2

# Redis + autostart
brew install redis

# CouchDB + autostart
brew install couchdb

# Final Checks
mongo --version && mongod --version
psql --version
sqlite3 --version
mysql --version
redis-cli --version
echo "Reminder: set the root password: mysql -u root password 'yourpass'"
