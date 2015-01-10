#!/usr/bin/env bash --login

function installGems() {
  # make sure we're up to date
  gem update --system
  gem update
  # if you're running Yosemite, you're safe.
  # Otherwise look here http://stackoverflow.com/a/19807558
  gem install nokogiri -- --with-xml2-include=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/libxml2 --use-system-libraries
  # install db adapters
  gem install sqlite3
  # should mysql2 eventually complain about missing mysql.h
  # give a look here https://coderwall.com/p/c0eqma/gem-install-mysql2-failed-on-mac-mysql-h-is-missing
  gem install mysql2 -- --with-mysql-dir=/usr/local/opt/mysql/
  gem install pg -- --with-pg-config=/usr/local/bin/pg_config
  gem install mongodb
  # support
  gem install haml
  gem install sass
  gem install less
  gem install compass
  gem install coffee-script
  # testing
  gem install rspec
  gem install cucumber
  gem install rspec-mocks
  gem install rspec-expectations
}

# Faster install
# Create or replace if .gemrc already exists.
echo "gem: --no-rdoc --no-ri" > ~/.gemrc

echo "Switching to global gemset and dumping installed gemlist/gems..."
rvm gemset use global
ruby -v && rvm gemset list && gem list
echo ""
read -p "Do you want to proceed? " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  installGems;
else
  echo "Aborted."; exit;
fi;

unset -f installGems;

# Lastly, install latest rails in a specific gemset
rvm use ruby-2.2.0@rails4.2 --create
gem install rails
gem install rspec-rails
gem install cucumber-rails
gem install simple_form
# leave the rails gemset
rvm gemset use global


gem install jekyll
# install heroku toolbelt standalone and update client
brew install heroku-toolbelt
heroku update
