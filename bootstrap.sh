#!/usr/bin/env bash

# Install Homebrew (OSX)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install apps
brew install tree
brew install tmux
brew install cppcheck

# Run .osx once
sudo ./.osx
