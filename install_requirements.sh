#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# check installation of homebrew
brew doctor

# install homebrew cask
brew install caskroom/cask/brew-cask

# install tools from brew
brew_requirements='brew_requirements.txt'

printf "Check brew requirements:\n"
while read brew_pkg; do
    if brew ls --versions $brew_pkg > '/dev/null'; then
        echo "$brew_pkg .... installed"
    else
        echo "$brew_pkg .... not installed"
        brew install $brew_pkg
    fi
done < $brew_requirements

# install tools from brew cask
cask_requirements='cask_requirements.txt'

printf "\nCheck cask requirements:\n"
while read cask_pkg; do
    if brew cask ls $cask_pkg &> '/dev/null'; then
        echo "$cask_pkg .... installed"
    else
        echo "$cask_pkg .... not installed"
        brew cask install $cask_pkg
    fi
done < $cask_requirements

printf "\nCheck pip3 requirements:\n"
pip3 install -r pip_requirements.txt

printf "\nCheck npm requirements:\n"
cat npm_requirements.txt | xargs npm install -g
