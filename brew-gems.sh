#!/usr/bin/env bash --login

rvm gemset create system
rvm gemset use system

gem update --system
gem update
# http://stackoverflow.com/a/19807558
gem install nokogiri -- --with-xml2-include=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/usr/include/libxml2 --use-system-libraries
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
gem install fakeweb
gem install jasmine
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
gem install scss-lint
# CLI utils
gem install hirb
gem install pry
# Jekyll
gem install jekyll
gem install github

ruby -v && rvm gemset list && gem list
