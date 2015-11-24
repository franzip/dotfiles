#!/usr/bin/env bash

brew install vim --override-system-vi --with-lua

brew install macvim --with-cscope --with-lua

curl http://j.mp/spf13-vim3 -L -o - | sh

cp .vimrc.local ~/
cp .gvimrc.local ~/
