#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install command line tools
xcode-select --install


# Get homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get ready to brew
brew update
brew upgrade --all
brew doctor

echo "Installing Cask..."
# Install Cask
brew tap caskroom/cask

echo "Tapping brew things."
# tap all the things directly here
brew tap caskroom/versions
brew tap homebrew/dupes
brew tap homebrew/python
brew tap homebrew/apache
brew tap homebrew/php
brew tap homebrew/science

# Get ready to brew
brew update
brew cleanup
cask cleanup

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

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
brew install bash-completion2

# Install more GNU stuff

# Install `wget` with IRI support.
brew install wget --with-iri

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/dupes/openssh
brew install gh

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install automake
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
brew install gettext
brew install gmp
brew install hashpump
brew install hydra
brew install john
brew install jpeg
brew install knock
brew install libevent
brew install libxml2
brew install libxslt
brew install mcrypt
brew install nmap
brew install ngrep
brew install openssl
brew install pngcheck
brew install siege
brew install socat
brew install ssh-copy-id
brew install sshrc
brew install sqlmap
brew install tmux
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xz

# nginx
brew install nginx

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install ffmpeg --with-libvpx
brew install git
brew install git-flow
brew install elixir
brew install go
brew install ngrok
brew install imagemagick --with-webp
brew install icu4c
brew install lua
brew install luajit
brew install lynx
brew install libtool
brew install mhash
brew install p7zip
brew install pcre
brew install pigz
brew install pv
brew install rename
brew install re2c
brew install rhino
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install zopfli
# Enable HTML5 support in tidy
# https://github.com/w3c/tidy-html5
brew install tidy-html5

# Markdown TOC generator
curl -L https://github.com/ekalinin/github-markdown-toc.go/releases/download/0.5.0/gh-md-toc.darwin.amd64.tgz > gh-md-toc.tgz
tar -xvzf gh-md-toc.tgz
rm gh-md-toc.tgz
chmod a+x gh-md-toc
mv gh-md-toc /usr/local/bin/gh-md-toc

echo "# use GNU utils" >> ~/.path
echo "export PATH=\"$(brew --prefix coreutils)/libexec/gnubin:$PATH\"" >> ~/.path
# except for ls... http://stackoverflow.com/questions/26585868/gnu-ls-from-coreutils-missing-os-x-acl-implementation
mv /usr/local/opt/coreutils/libexec/gnubin/ls /usr/local/opt/coreutils/libexec/gnubin/ls_gnu
ln -s /bin/ls /usr/local/opt/coreutils/libexec/gnubin/ls

# Remove outdated versions from the cellar.
brew cleanup
