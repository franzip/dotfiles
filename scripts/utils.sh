#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
# Install some other useful utilities like `sponge`.
brew install moreutils
brew install findutils
brew install gnu-sed
brew install gnu-tar
brew install gnupg gnupg2

brew install wget
brew install grc
brew install oniguruma
brew install libzip
brew install grep
brew install screen
brew install openssh

brew install automake
brew install binutils
brew install binwalk
brew install cmake
brew install colordiff
brew install curl
brew install gcc
brew install gettext
brew install gmp
brew install libevent
brew install mcrypt
brew install openssl
brew install jq
brew install ssh-copy-id
brew install tmux
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install nginx
brew install gpg2
brew install ack
brew install exiv2
brew install libvpx
brew install ffmpeg
brew install git
brew install git-flow
brew install imagemagick
brew install icu4c
brew install lua
brew install luajit
brew install libtool
brew install mhash
brew install p7zip
brew install pcre
brew install pigz
brew install re2c
brew install rhino
brew install tree
brew install webkit2png
brew install zopfli
brew install markdown-toc
brew install tidy-html5
brew install llvm

brew cleanup
