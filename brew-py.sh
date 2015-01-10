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

# pyenv is so awesome!
echo "Installing pyenv..."
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-pip-rehash
# Set pyenv env vars
# rvm will probably yell because won't be anymore in front of $PATH
# Just move the rvm statement below in .path
echo "Installing pyenv..."
echo "# START PYENV" >> ~/.path
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.path
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.path
echo 'eval "$(pyenv init -)"' >> ~/.path
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.path
echo "# END PYENV" >> ~/.path
echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && source \"$HOME/.rvm/scripts/rvm\"" >> ~/.path
source ~/.bash_profile
# Install all the versions you want
while true; do
  echo "------------------"
  echo ""
  echo pyenv install --list
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
# Pick a version as global
while true; do
  pyenv versions
  read -p "";
  if [[ $REPLY =~ ^[qQ]$ ]]; then
    exit;
  else
    pyenv install $REPLY
  fi;
done

echo "All done. Dumping info (versions should match):"
which python && pyenv version && python --version


