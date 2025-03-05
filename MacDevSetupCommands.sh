### Mac development setup

# show path in finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
# brew cask install visual-studio-code
# Flux - blue light filter software
# CleanMyMacX to delete Junk files from mac - from https://macpaw.com/

## Google chrome Browser - extensions:
# React Devtools
# Save all Resources
# Pretty Beautiful Javascript
# JSON Formatter

### Terminal

xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew doctor # check installation
brew analytics off
brew cask install iterm2
brew install tldr
brew install tmux
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install bash # latest version of bash
# install nvm/node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
command -v nvm # to check nvm installation should output "nvm"
nvm install stable
node --version # check installed node version
nvm use 13 # switch to specific node version
mkdir ~/Projects
npm install -g lite-server eslint # simple localhost server
# Create github personal access token to use as git password: https://github.com/settings/tokens
# Setup git with github: https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/set-up-git
brew install git
brew install vcprompt

### Code editor

# Visual Studio Code plugins:
# Bracket Pair Colorizer 2
# Tailwind CSS Intellisense
# setting sync
# SVG Viewer
# path intellisense
# sass
# javascript code snippets
# visual studio intellicode

### Frameworks for web development

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
git remote add origin # https://github.com/vincenzodomina/my-repository.git
git push -u origin master
npm install redux # predictable state container with store, actions and reducers
npm install @material-ui/core # React components

### JavaScript
npm install moment # managing time and dates in javascript

### Frameworks for native development

# React native
brew install yarn
brew install watchman # Facebook file watching service, Watches files and records, or triggers actions, when they change.
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
npm install -g react-native-cli
# -> then install android studio https://developer.android.com/studio/index.html

# expo.io
# node.js and watchman needs to be installed
npm install expo-cli --global
expo init my-new-project
cd my-new-project
expo start # then download Expo from Appstore on mobile phone and scan QR-code
brew update && brew cask install react-native-debugger # RN dev tools

### Databases

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

### Web services

# Amazon Web Services
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"  # download package to current folder
sudo installer -pkg ./AWSCLIV2.pkg -target /   #install
aws configure # configure iam user with access key and secret key and e.g. eu-central-1 as default server region and json
aws s3 mb s3://your-bucket-name # creates a bucket
aws s3 ls # lists buckets
npm run build && aws s3 sync build/ s3://your-bucket-name  # builds and deploys the react app

# Google cloud functions
# Install gcloud command line tool: https://cloud.google.com/sdk/docs/install
./google-cloud-sdk/install.sh # isntall paths
./google-cloud-sdk/bin/gcloud init # initialize SDK and reopen terminal
# Cloud functions: https://github.com/GoogleCloudPlatform/functions-framework-nodejs

# ./zshrc file:
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vincenzodomina/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vincenzodomina/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vincenzodomina/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vincenzodomina/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vincenzodomina/google-cloud-sdk/completion.zsh.inc'; fi

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk/23.1.7779620
export ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/23.1.7779620
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export CLOUDSDK_PYTHON=python3

# bun completions
[ -s "/Users/vincenzodomina/.bun/_bun" ] && source "/Users/vincenzodomina/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. "$HOME/.local/bin/env"

# .aliases file:
alias hallo="ls -lah"

alias myip="curl https://api.ipify.org; echo"

alias gs="git status"
alias gas="git add . && git status"
