#!/usr/bin/env bash

brew install vim --override-system-vi --with-lua

brew install macvim --with-cscope --with-lua --with-luajit

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

cp .vimrc.local ~/
cp .gvimrc.local ~/
