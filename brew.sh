#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# Avoid --default-names flag as this wipes out native OS X bins. Prefer aliasing.
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
# Install some other useful utilities like `sponge`.
brew install moreutils
brew install findutils
brew install gnu-sed
brew install gnu-tar
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install more GNU stuff

# Install `wget` with IRI support.
brew install wget --with-iri

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
# Don't override here, use aliases instead and keep normal vim
# MacVim fullscreen mode is messed up and doesn't work well in Yosemite.
brew install macvim
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install cmake
brew install colordiff
brew install curl
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install gcc
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install libxml2
brew install libxslt

brew install nmap
brew install ngrep
brew install openssl
brew install pngcheck
brew install socat
brew install ssh-copy-id
brew install sshrc
brew install sqlmap
brew install tmux
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install ffmpeg --with-libvpx
brew install git
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pcre
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install zopfli
# Enable HTML5 support in tidy
# https://github.com/w3c/tidy-html5
brew install homebrew/dupes/tidy --HEAD
# install heroku toolbelt standalone and update client
brew install heroku-toolbelt
heroku update

echo "# use GNU utils" >> ~/.path
echo "export PATH=\"$(brew --prefix coreutils)/libexec/gnubin:$PATH\"" >> ~/.path
# except for ls... http://stackoverflow.com/questions/26585868/gnu-ls-from-coreutils-missing-os-x-acl-implementation
mv /usr/local/opt/coreutils/libexec/gnubin/ls /usr/local/opt/coreutils/libexec/gnubin/ls_gnu
ln -s /bin/ls /usr/local/opt/coreutils/libexec/gnubin/ls

# Remove outdated versions from the cellar.
brew cleanup
