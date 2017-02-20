#!/bin/bash

brew_requirements='brew_requirements.txt'
cask_requirements='cask_requirements.txt'

printf "Check brew requirements:\n"
while read brew_pkg; do
    if brew ls --versions $brew_pkg > '/dev/null'; then
        echo "$brew_pkg .... installed"
    else
        echo "$brew_pkg .... not installed"
    fi
done < $brew_requirements

printf "\nCheck cask requirements:\n"
while read cask_pkg; do
    if brew cask ls $cask_pkg &> '/dev/null'; then
        echo "$cask_pkg .... installed"
    else
        echo "$cask_pkg .... not installed"
    fi
done < $cask_requirements
