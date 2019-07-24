# Disable Mac OS Gatekeeper
sudo spctl --master-disable

# Install Brew
yes '' | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Dozer is a Bartender-like free app
brew cask install dozer

brew cask install google-chrome
# Disable chrome touchpad "swipe nabigation"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false

brew cask install atom
brew cask install gitkraken
brew cask install rubymine

# Install iTerm2 with zsh and Oh My Zsh
brew cask install iterm2
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
upgrade_oh_my_zsh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/floor114/zsh-apple-touchbar $ZSH_CUSTOM/plugins/zsh-apple-touchbar

# Download my .zshrc gist
cd; curl -O https://gist.githubusercontent.com/GianDigia/df55b81fccd0c2c05b5ae7cd03abdf71/raw/78e38f517cce00416c092f2ae01a33486588d3d2/.zshrc

# set zsh as my shell
chsh -s /bin/zsh
# Install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Install font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# get ~/Library/Preferences/com.googlecode.iterm2.plist from gist
cd ~/Library/Preferences/
curl -O https://gist.githubusercontent.com/GianDigia/df55b81fccd0c2c05b5ae7cd03abdf71/raw/78e38f517cce00416c092f2ae01a33486588d3d2/.zshrhttps://gist.githubusercontent.com/GianDigia/5c822a49da08e02516ac107d5504ab00/raw/8f03974f92797083487b630236ba740f10fc5013/com.googlecode.iterm2.plist
cd

# Avoid "Last login" message in terminal
touch ~/.hushlogin

# Install Apple App Store CLI
brew install mas
# Install Telegram from the App Store
mas install 747648890
# Install Paste from the App Store
mas install 967805235
# Install WhatsApp from the App Store
mas install 1147396723
# Install Todoist from the App Store
mas install 585829637
# Install The Unarchiver from the App Store
mas install 425424353
# Install Magnet from the App Store
mas install 441258766
# Install LastPass from the App Store
mas install 926036361
# Install NordVPN
mas install 1116599239
# Install Trello
mas install 1278508951
# Install Slack
mas install 803453959

# Import Dock configuration from gist
curl -O https://gist.githubusercontent.com/GianDigia/0f31cedcb6eaa6b4183479ecadb55368/raw/aff393b594c972b671e4732f31090f4b7639218b/customdock.mobileconfig
profiles -I -F customdock.mobileconfig
rm customdock.mobileconfig

# Hot corners
#  0 : NOP
#  2 : Mission Control
#  3 : Show application windows
#  4 : Desktop
#  5 : Start screen saver
#  6 : Disable screen saver
#  7 : Dashboard
# 10 : Put display to sleep
# 11 : Launchpad
# 12 : Notification Center
defaults write com.apple.dock wvous-bl-corner -int 11
defaults write com.apple.dock wvous-tr-corner -int 4

# Trigger "activate/deactivate full-screen" with CMD+RETURN
plutil -insert NSUserKeyEquivalents -xml "<dict><key>Attiva modalità a tutto schermo</key><string>@↩</string><key>Disattiva modalità a tutto schermo</key><string>@↩</string></dict>" ~/Library/Preferences/.GlobalPreferences.plist

# Remove cursor magnification on shake
defaults write CGDisableCursorLocationMagnification -bool false

# Use Dark menu bar and Dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Sidebar icon size: Medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Scroll bar visibility
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Hide recent applications from Dock
defaults write com.apple.dock show-recents false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Allow applications downloaded from anywhere
sudo spctl --master-disable

# Turn on Firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# Hide Siri in menu bar
defaults write com.apple.Siri StatusMenuVisible -bool false

# Tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Restart like you pressed the GUI "Restart" button
osascript -e 'tell app "System Events" to restart'
