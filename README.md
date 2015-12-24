# My dotfiles

This is basically a mashup of the best dotfiles repos out there ([Mathias Bynens'](https://github.com/mathiasbynens) and [Paul Irish's](https://github.com/paulirish) above all) + my own personal tweaks.  
My advice is to keep them in your Dropbox/Drive folder so that you can reuse them on multiple devices if you want to.

## OS X Version 

These dotfiles have been used and tried on OS X 10.10 Yosemite (I still have to upgrade to OS X 10.11), so if you have El Captain installed you could get some error and have to tweak something as you go with the install process.

## Install Scripts Description 

* **.osx**: contains lots of specific tweaks for OS X.
* **bootstrap.sh**: copies the content of the repo in your $HOME folder through rsync.
* **brew.sh**: installs XCode CLI Tools, Homebrew and tons of useful packages.
* **install-deps.sh**: installs RVM, Ruby 2.2.1, NodeJS, Nave and switch Bash to version 4.
* **brew-cask.sh**: installs a bunch of programs through the Homebrew Cask CLI.  
Caveat: you may want to get your Casks symlinked in the /Applications folder.  
To do that, just add this line to .bash_profile or .zshrc:  ```export HOMEBREW_CASK_OPTS="--appdir=/Applications"```

* **brew-dbs.sh**: installs and configure MySQL, Postgres, SQLite and MongoDB, along with other stuff like MySQL Workbench and Robomongo.
* **brew-fonts.sh**: installs a bunch of fonts along with their Powerline version.
* **brew-gems.sh**: installs a bunch of gems in the global gemset and creates a Rails specific gemset.
* **brew-node.sh**: installs the most used node modules (you'll need some of them as dependencies in Sublime Text 3) and stuff like Meteor :heart:.
* **brew-php.sh**: installs and configures [PHPBrew](https://github.com/phpbrew/phpbrew) and you'll also get PHPUnit, Composer and Laravel/Symfony Installers.  
**Please note that this will NOT install a new version of PHP (you will still be running the one shipped with your Mac).** [To install PHP through PHPBrew refer to the docs.](https://github.com/phpbrew/phpbrew/wiki)
* **brew-py.sh**: installs Python 2, PEP257, PEP8, Pylint, Numpy, Scipy, Matplotlib and [Pyenv (check it out).](https://github.com/yyuu/pyenv)
* **brew-scala.sh**: installs SBT, Scala and the Eclipse Scala IDE.
* **brew-systools.sh**: installs CLI tools for PaaS/IaaS/SaaS providers (AWS, Azure, Heroku), along with VirtualBox, Vagrant and Docker.
* **vim.sh**: installs Vim and MacVim (with Lua supports) and the [spf13-vim distro](http://vim.spf13.com/).
* **zsh.sh**: installs Zsh and [Oh-My-Zsh](http://ohmyz.sh/).

## How to Install

* The .osx script can be run at any moment. Anyway if you plan to install the following software, you may want to do that **BEFORE** running the .osx script, as it contains customizations for: Twitter (App Store), GPGMail, SizeUp, Chrome, Chrome Canary, iTerm.

### Order Dependencies 

1. bootstrap.sh 
2. brew.sh
3. install-deps.sh
4. brew-dbs.sh

These are the only order dependencies you should respect before launching any language/environment specific script (brew-py, brew-gems, ecc).  
Apart from this you can install what you need in any order. 

### Suggested Order

1. bootstrap.sh
2. brew-cask.sh
3. .osx
4. brew.sh
5. install-deps.sh
6. brew-dbs.sh
7. brew-fonts.sh
8. brew-php.sh | brew-node.sh | brew-py.sh | brew-gems.sh | brew-scala.sh

## Sublime Text 3

I like to keep my [Sublime settings synced across multiple devices](https://packagecontrol.io/docs/syncing).  
If you want to use my config files, just remove your Packages/User folder and issue this command (assuming you cloned the repo in ```~/Dropbox/dotfiles/```):  
```ln -s ~/Dropbox/dotfiles/sublime ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User```  

Once you open Sublime Text, just let it do its job and install stuff.
