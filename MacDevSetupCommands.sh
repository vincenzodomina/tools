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
npm install redux # predictable state container with store, actions and reducers
npm install @material-ui/core # React components
npm install react-router-dom # dynamic routing inside of react, https://reacttraining.com/react-route
npm install react-js-pagination # A ReactJS dumb component to render a pagination with no built-in styles. 
npm install @material-ui/core
npm install @material-ui/icons
npm install react-select # Autocompletion at search bars


# JavaScript
npm install moment # managing time and dates in javascript

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
brew update && brew cask install react-native-debugger # RN dev tools

## Databases
# PostGreSQL Installer from https://www.enterprisedb.com/
npm install pg # toolset for using node with postgres, API: const { Client } = require('pg')
psql -d mydb -U myuser # Access database through terminal, \c (connect to db), \d mytable (list table content), \dt (list all tables), \q (quit connection)

# Node.js und Express
npm install body-parser # Node.js body parsing middleware, API:var bodyParser = require('body-parser')
npm install express # Express.js - Web-Framework für Node.js, API:var express = require('express');var app = express();
# If you are only interested in the node packages installed globally without the full TREE then:
npm -g ls --depth=0
# or locally (omit -g) :
npm ls --depth=0
# Express files template
npm install express-generator -g # creates expresss template, usage: $ express --no-view
npm install -g nodemon # Develop without restarting node on filechanges
npm install --save-dev nodemon # Save nodemon as dev dependency, start it with: nodemon [your node app]
npm install axios # Make http requests from node.js
npm install cors # cross-origin-ressource-sharing, providing a Connect/Express middleware that can be used to enable CORS 
