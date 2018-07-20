#!/usr/bin/env bash

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

brew install grep
brew install homebrew/core/screen
brew install homebrew/core/openssh
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
brew install ucspi-tcp
brew install xz

# nginx
brew install nginx

# Install other useful binaries.
brew install ack
brew install exiv2
brew install libvpx
brew install ffmpeg --with-libvpx
brew install git
brew install git-flow
brew install elixir
brew install go
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
brew install phantomjs

# Markdown TOC generator
wget https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc
chmod a+x gh-md-toc
mv gh-md-toc /usr/local/bin/gh-md-toc

echo "# use GNU utils" >> ~/.path
echo "export PATH=\"$(brew --prefix coreutils)/libexec/gnubin:$PATH\"" >> ~/.path
mv /usr/local/opt/coreutils/libexec/gnubin/ls /usr/local/opt/coreutils/libexec/gnubin/ls_gnu
ln -s /bin/ls /usr/local/opt/coreutils/libexec/gnubin/ls

# Remove outdated versions from the cellar.
brew cleanup
