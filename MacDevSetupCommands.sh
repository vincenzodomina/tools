## Mac setup and apps
# show path in finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
# Google chrome Browser - React Devtools
# brew cask install visual-studio-code
# Flux

## Terminal
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew cask install iterm2
brew install tldr
brew install tmux
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install bash # latest version of bash
# install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
mkdir ~/Projects
npm install -g lite-server eslint
brew install git
brew install vcprompt

## Frameworks for web development
# TailwindCSS
npm init -y  #create package.json file
npm install tailwindcss postcss-cli autoprefixer
npx tailwind init . # In package.json under scripts put in: "build": "postcss css/main.css -o public/build/main.css"
echo "module.exports = {plugins: [require('tailwindcss'),require('autoprefixer'),]}" > postcss.config.js
npm run build
# React
npx create-react-app my-app
cd my-app
npm start

## Visual Studio Code plugins:
# Tailwind CSS Intellisense
# SVG Viewer
# path intellisense
# sass
# javascript code snippets
# visual studio intellicode

