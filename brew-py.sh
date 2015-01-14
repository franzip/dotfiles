#!/usr/bin/env bash

brew update
brew upgrade

# Install brewed python2.x and update pip
brew install python
pip install --upgrade setuptools
pip install --upgrade pip

# ST3 dependencies, gotta install them globally
pip install pep257
pip install pep8
pip install pylint

brew install gcc
brew install numpy
brew install scipy
brew install matplotlib

echo "Checking numpy/scipy/matplotlib install..."
sleep 5
python -c 'import numpy; numpy.test()'
sleep 10
python -c 'import scipy; scipy.test()'
sleep 10
python -c 'import matplotlib; print matplotlib.__version__'
sleep 5

# pyenv is so awesome!
# It seems that the annoying homebrew warnings about shims are non avoidable btw.
# https://github.com/yyuu/pyenv/issues/106
# https://github.com/yyuu/pyenv/issues/42
echo "Installing pyenv..."
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-pip-rehash
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
# Install all the versions you want
while true; do
  echo "------------------"
  echo ""
  pyenv install --list
  echo ""
  echo "------------------"
  echo "Check the available version listed above and insert the one you want to install (must match exactly!)."
  echo "Press q or Q to quit when you're done installing."
  read -p "";
  if [[ $REPLY =~ ^[qQ]$ ]]; then
    break;
  else
    pyenv install $REPLY
  fi;
done
echo ""
echo ""
# Pick a version as global
while true; do
  pyenv versions
  echo "Check the installed version listed above and insert the one you want to use as default (must match exactly!). Click q or Q to exit."
  read -p "";
  if [[ $REPLY =~ ^[qQ]$ ]]; then
    exit;
  else
    pyenv global $REPLY
  fi;
done

echo "All done. Dumping info (versions should match):"
which python
pyenv version
python --version


