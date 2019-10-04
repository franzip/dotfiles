#!/usr/bin/env bash

brew update
brew upgrade

brew install python
brew install python3
pip install --upgrade setuptools
pip install --upgrade pip
pip install pep257
pip install pep8
pip install pylint

brew install numpy
brew install scipy

echo "Checking numpy/scipy/matplotlib install..."
sleep 5
python -c 'import numpy; numpy.test()'
sleep 10
python -c 'import scipy; scipy.test()'
sleep 10
python -c 'import matplotlib; print matplotlib.__version__'
sleep 5

echo "Installing pyenv..."
brew install pyenv
brew install pyenv-virtualenv
echo "Installing pipenv..."
brew install pipenv
# Set pyenv env vars
echo "Installing pyenv..."
echo "# START PYENV" >> ~/.path
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.path
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.path
echo 'eval "$(pyenv init -)"' >> ~/.path
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.path
echo "# END PYENV" >> ~/.path
# keep rvm in front of $PATH
echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && source \"$HOME/.rvm/scripts/rvm\"" >> ~/.path
source ~/.bash_profile

echo "All done. Dumping info (versions should match):"
which python
pyenv version
python --version
