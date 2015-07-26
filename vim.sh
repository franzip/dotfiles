#!/usr/bin/env bash

brew install vim --override-system-vi

brew install macvim --with-cscope

curl http://j.mp/spf13-vim3 -L -o - | sh

cp .vimrc.local ~/
