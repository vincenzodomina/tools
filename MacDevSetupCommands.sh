## Mac setup

# show path in finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder

## Terminal
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew cask install iterm2

# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install bash # latest version of bash
# install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
mkdir ~/Projects
npm install -g lite-server eslint
brew install tldr

## Mac apps
# Google chrome Browser - React Devtools
# brew cask install visual-studio-code
# Flux

## Terminal commands/ Frameworks for web development


