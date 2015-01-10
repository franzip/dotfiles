# Francesco's dotfiles.

This is basically a mashup of the best dotfiles repos out there (Mathias Bynens' and Paul Irish's above all) + my own personal tweaks.

## Usage & Installation

Please refer to [Mathias' awesome docs](https://github.com/mathiasbynens/dotfiles).
Pretty much everything there applies here too.

In order to work, some things (vim and sublime text) require you to fork the repo on your Dropbox root folder (see more below).

Besides the "usual" installs, there are also additional scripts to set up additional stuff (gems, node_modules, etc).

## Please read this. Carefully.

Everyone has their own taste. **DO NOT proceed to install anything before you read the source** or you'll end up messing your system with settings you don't like (yeah you can always revert, but you'll be wasting time).

### Sublime Text 3
I added my Sublime Text 3 config folder ([which I like to keep synced through Dropbox on different machines](https://packagecontrol.io/docs/syncing)).

If you like my ST3 settings it would be ideal for you to clone/fork the repo directly on your Dropbox: that way you are ready to go.
Otherwise, just comment out/remove the sublime section in the .osx file.

Several plugins have node/gems dependencies, so ST3 will complain if they aren't installed.

### Vim
Vundle has been added to Vim (I tried to make .vimrc more modular following [this example](https://github.com/ddellaquila/dd-vim), so you'll find additional config files in .vim/modules).
The install-deps script will provide to install Vundle, so before you ask, you don't need to install it manually.

#### plugins.vim
The main install script also provides to install the core Vim plugins I use. If you wish to avoid this, just remove or comment out the whole .vim/modules/plugins.vim

Plugins.vim contains also plugins for syntax specific support: those are commented out, to install them just uncomment and run `:PluginInstall` inside vim or `vim +PluginInstall` from the shell.

## ChangeLog

* Removed the bin/ folder.
* Modified .vimrc to use Vundle as Vim Package Manager. Vim related stuff (plugins list, functions, etc.) is listed in the .vim/modules folder, so give it a look and see if you like what you see.
* Added new .vim files in .vim/modules for future usage.
* Added Sublime Text 3 settings folder.
* The .osx script takes now care of syncing Sublime settings to Dropbox.
* Added a .gemrc file
* Added a lot of formulae. Just check brew-*.sh files.
* The install script now provides some rudimental checks to see if everything got installed correctly (node, rvm, etc).
* brew-fonts.sh installs a bunch of fonts I like.
* brew-dbs.sh sets up the following databases: mysql, pgsql, sqlite, mongodb.
* brew-gems.sh installs some basic gems (nokogiri, haml, sass, rspec, etc.) and creates a rvm gemset for rails 4.2.
* brew-node.sh installs basic modules (yo, bower, grunt etc) and ST3 dependencies.
* brew-py.sh bootstraps a basic Python dev environment using pyenv.
