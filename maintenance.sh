export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

brew update
brew upgrade
brew cask upgrade --greedy
brew cleanup

# Upgrade oh_my_zsh
sh $ZSH/tools/upgrade.sh

# Upgrade App Store applications
mas upgrade

upgrade_oh_my_zsh
git -C .oh-my-zsh pull

read -p "Update MacOS? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  sudo softwareupdate -diaR
fi
