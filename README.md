# Francesco's dotfiles.

This is basically a mashup of the best dotfiles repos out there (Mathias Bynens' and Paul Irish's above all) + my own personal tweaks.

## Usage & Installation

Please refer to [Mathias' awesome docs](https://github.com/mathiasbynens/dotfiles).
Pretty much everything there applies here too.

## Please read this. Carefully.

Everyone has their own taste. *DO NOT proceed to install anything before you read the source* or you'll end up messing your system with settings you don't like (yeah you can always revert, but why wasting time?).

### Sublime Text 3
I added my Sublime Text 3 config folder ([which I like to keep synced through Dropbox on different machines](https://packagecontrol.io/docs/syncing)).
If you like my ST3 settings it would be ideal for you to clone/fork the repo directly on your Dropbox: that way you are ready to go.
Otherwise, just comment out/remove the sublime section in the .osx file.
A lot of plugins I use have node/gems dependencies, so ST3 will complain if they aren't installed.

### Vim
Vundle has been added to Vim (I tried to make .vimrc more modular following [this example](https://github.com/ddellaquila/dd-vim), so you'll find additional config files in .vim/modules).
The install script will provide to install Vundle, so before you ask, you don't need to install it manually.
If you want to use my plugin list, you just need to run :PluginInstall the first time you load vim and Vundle will do the magic.
You can also run "vim +PluginInstall +qall" from the prompt to achieve the same result.

## ChangeLog

* Removed the bin/ folder.
* Modified .vimrc to use Vundle as Vim Package Manager. Vim related stuff (plugins list, functions, etc.) is listed in the .vim/modules folder, so give it a look and see if you like what you see.
* Added new .vim files in .vim/modules for future usage.
* Node.js gets now installed through nave.
* Added Sublime Text 3 settings folder.
* The .osx script takes now care of syncing Sublime settings to Dropbox.
* Added a .gemrc file
* Added a lot of formulae. Just check brew-*.sh files.
* brew-fonts.sh now installs a bunch of fonts I like.
* The install script now provides some rudimental checks to see if everything got installed correctly (node, rvm, etc). Double checking wouldn't be a bad idea.
* Log eventual install errors to error.log
