export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

brew update
brew upgrade
brew cask upgrade --greedy
brew cleanup

# Upgrade oh_my_zsh
sh $ZSH/tools/upgrade.sh

# Upgrade App Store applications
# mas upgrade
echo "Skip 'mas upgrade' due to different issue that affect the CLI"

upgrade_oh_my_zsh
git -C .oh-my-zsh pull


read -t 1 -n 10000 discard
printf "\033[A\n"


read -p "Update MacOS? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Updating MacOS"	
  sudo softwareupdate -diaR
else
  echo "Not Updating MacOS"
fi
