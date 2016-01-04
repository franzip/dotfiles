#!/usr/bin/env bash

brew update && brew upgrade && brew doctor

# Install sqlite
brew install sqlite

# MySQL + autostart
brew install mysql
mysqld --initialize --log-error-verbosity --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
brew cask install sequel-pro
brew install phpmyadmin
brew cask install mysqlworkbench

# Postgres + autostart
brew install postgres
initdb `brew --prefix`/var/postgres/data -E utf8
createdb `whoami`
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
brew cask install psequel

# MongoDB + autostart
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
brew cask install robomongo

# Final Checks

mongo --version && mongod --version
psql --version
sqlite3 --version
mysql --version
echo "Reminder: set the root password: mysql -u root password 'yourpass'"
