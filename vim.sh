#!/usr/bin/env bash

brew install vim

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

cp .vimrc.local ~/
cp .gvimrc.local ~/
