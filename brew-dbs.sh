#!/usr/bin/env bash

brew update && brew upgrade && brew doctor

# Install sqlite
brew install sqlite

# Install mysql (autostart daemon on login)
brew install mysql
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
# It's lightweight, it's cool
brew cask install sequel-pro

# Install pgsql (autostart daemon on login)
brew install postgres
initdb /usr/local/var/postgres
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# Install mongodb (autostart daemon on login)
brew install mongodb
mkdir -p /data/db
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents

# Final Checks

mongo --version && mongod --version
psql --version
sqlite3 --version
mysql --version
echo "Reminder: set the root password: mysql -u root password 'yourpass'"

