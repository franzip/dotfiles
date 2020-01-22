#!/usr/bin/env bash

curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar
mv phpbrew.phar /usr/local/bin/phpbrew

phpbrew init
phpbrew lookup-prefix homebrew

phpbrew install 7.4.1 +default as system
phpbrew use system
phpbrew system

phpbrew app get composer
phpbrew app get phpunit

curl -sS https://get.symfony.com/cli/installer | bash

composer global require laravel/installer
