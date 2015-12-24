#!/usr/bin/env bash

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew

phpbrew init
phpbrew lookup-prefix homebrew

phpbrew app get composer
phpbrew app get phpunit

sudo curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
sudo chmod a+x /usr/local/bin/symfony

composer global require "laravel/installer"
sudo ln -s "$HOME/.composer/vendor/laravel/installer/laravel" /usr/local/bin/laravel