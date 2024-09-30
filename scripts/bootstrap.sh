#!/usr/bin/env bash

if [ -z "$HOMEBREW_GITHUB_API_TOKEN" ]
then
  echo "Homebrew API token not set. Open .extra file and set the token before proceeding";
  exit 1;
fi

rsync --exclude ".git/" \
  --exclude "scripts/" \
  --exclude "configs/" \
  --exclude "env/" \
  --exclude ".DS_Store" \
  --exclude ".osx" \
  --exclude "bootstrap.sh" \
  --exclude "README.md" \
  -avh . "$HOME";

