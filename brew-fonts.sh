#!/usr/bin/env bash

brew cleanup

brew tap caskroom/fonts

cask install font-source-code-pro
cask install font-source-sans-pro
cask install font-source-serif-pro
cask install font-inconsolata
cask install font-anonymous-pro
cask install font-dejavu-sans
cask install font-liberation-sans
cask install font-droid-sans-mono
cask install font-droid-sans
cask install font-meslo-lg
cask install font-ubuntu
cask install font-terminus

# Powerline font version, grab them all just in case
cask install font-anonymous-pro-for-powerline
cask install font-inconsolata-g-for-powerline
cask install font-dejavu-sans-mono-for-powerline
cask install font-liberation-mono-for-powerline
cask install font-droid-sans-mono-for-powerline
cask install font-meslo-lg-for-powerline
cask install font-fira-mono-for-powerline
cask install font-sauce-code-powerline
cask install font-inconsolata-dz-for-powerline
cask install font-source-code-pro-for-powerline
cask install font-inconsolata-for-powerline
cask install font-ubuntu-mono-powerline
