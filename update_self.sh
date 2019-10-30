cp ~/Library/Preferences/com.googlecode.iterm2.plist conf_files/
cp ~/.zshrc conf_files/
cp ~/.term_themes/* term_themes/

git commit -a -m "Update $(date +%d-%m-%Y)"
