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
  gem install mysql2 -- --with-mysql-config=/usr/local/bin/mysql_config
  gem install pg -- --with-pg-config=/usr/local/bin/pg_config
  gem install mongodb
  # global assets
  gem install less
  gem install compass
  gem install coffee-script
  gem install sass
  # templating
  gem install haml
  gem install slim
  gem install mustache
  # testing
  gem install capybara
  gem install rspec
  gem install cucumber
  gem install rspec-mocks
  gem install rspec-expectations
  gem install launchy
  gem install shoulda
  gem install factory_girl
  # img
  gem install rmagick
  # metrics
  gem install rubocop
  gem install reek
  gem install simplecov
  # utils
  gem install annotate
  gem install better_errors
  gem install binding_of_caller
  gem install byebug
  gem install will_paginate
  # CLI utils
  gem install hirb
  gem install pry
  # Jekyll
  gem install jekyll
}

function railsGems() {
  gem install rails
  # assets
  gem install jquery-rails
  gem install haml-rails
  gem install sass-rails
  gem install coffee-rails
  gem install less-rails
  gem install compass-rails
  gem install twitter-bootstrap-rails
  # auth
  gem install cancan
  gem install devise
  gem install pundit
  gem install authlogic
  gem install omniauth
  # pagination
  gem install kaminari
  # testing
  gem install rspec-rails
  gem install cucumber-rails
  gem install factory_girl_rails
  # forms
  gem install formtastic
  gem install simple_form
  # upload
  gem install carrierwave
  gem install paperclip
  # act_as utils
  gem install acts_as_list
  gem install acts-as-taggable-on
  gem install acts_as_tree
  gem install acts_as_commentable
  # utils
  gem install draper
  gem install cells
  gem install friendly_id
  gem install bullet

}

# Faster install
# Create or replace if .gemrc already exists.
echo "gem: --no-rdoc --no-ri" > ~/.gemrc

echo "Switching to global gemset and dumping installed gemlist/gems..."
rvm gemset use global
ruby -v && rvm gemset list && gem list
echo ""
echo "Installing useful gems..."
echo ""
read -p "Do you want to proceed? " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  installGems;
else
  echo "Aborted."; exit;
fi;
unset -f installGems;

echo ""
echo "Installing rails 4.2 and a bunch of gems..."
echo ""
read -p "Do you want to proceed? " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rvm use ruby-2.2.0@rails4.2 --create
  railsGems;
else
  echo "Aborted."; exit;
fi;
unset -f railsGems;

echo "Switching back to global gemset..."
rvm gemset use global
