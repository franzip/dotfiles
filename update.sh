brew update
brew upgrade

omz update
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
exec $HOME/.nvm/install.sh
cd $HOME/.goenv && git fetch --all && git pull
