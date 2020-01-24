#!/usr/bin/env bash

brew update
brew upgrade

brew install python
pip3 install --upgrade setuptools
pip3 install --upgrade pip
pip3 install pep257
pip3 install pep8
pip3 install pylint

echo "Installing pyenv..."
brew install pyenv-virtualenv
brew install pipenv
# Set pyenv env vars
echo "# START PYENV" >> ~/.path
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.path
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.path
echo 'eval "$(pyenv init -)"' >> ~/.path
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.path
echo "# END PYENV" >> ~/.path
# keep rvm in front of $PATH
echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && source \"$HOME/.rvm/scripts/rvm\"" >> ~/.path
