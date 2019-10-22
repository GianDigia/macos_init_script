brew update
brew upgrade
brew cask upgrade --greedy
brew cleanup

# Upgrade oh_my_zsh
sh $ZSH/tools/upgrade.sh

# Upgrade App Store applications
mas upgrade

read -p "Update MacOS? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  sudo softwareupdate -diaR
fi
