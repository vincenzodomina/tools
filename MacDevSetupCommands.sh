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
npm install tailwindcss-animatecss #Animations
# modify tailwind.config.js according to https://www.npmjs.com/package/tailwindcss-animatecss
# PurgeCSS
# Using npm
npm install @fullhuman/postcss-purgecss --save-dev
# To minify CSS setup PurgeCSS (https://tailwindcss.com/docs/controlling-file-size/)
# If that doesn'work, minify manually with replacing build command with 'purgecss --css css/main.css --content index.html --output css/'

# React
npx create-react-app my-app
cd my-app
npm start
git remote add origin #<remote-path>

## Visual Studio Code plugins:
# Tailwind CSS Intellisense
# SVG Viewer
# path intellisense
# sass
# javascript code snippets
# visual studio intellicode

## Frameworks for native development

# React native

# expo.io
brew install watchman
# node.js needs to be installed
npm install expo-cli --global
expo init my-new-project
cd my-new-project
expo start # then download Expo from Appstore on mobile phone and scan QR-code
