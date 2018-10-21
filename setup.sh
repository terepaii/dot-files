#!/bin/bash

ZSH_DIR=$PWD/zsh

if grep -q "export ZDOTDIR=" $ZSH_DIR/.zshenv
then
    echo "ZDOTDIR already set"
else
    echo "Setting ZDOTDIR"
    echo "export ZDOTDIR=$ZSH_DIR" >> $ZSH_DIR/.zshenv
    echo "Copying .zshenv to $HOME"
    cp $ZSH_DIR/.zshenv ~
fi

ARCH="$(uname -s)"
case "$ARCH" in
    Darwin*) MACHINE=Mac;;
    *)       MACHINE="UNKNOWN:$ARCH"
esac

# Installations for OSX
#TODO: Add a check for zsh highlighting


if [[ $MACHINE == "Mac" ]]
then
    which -s ruby
    if [[ $? != 0 ]]
    then
        echo "Ruby is not installed. Needed to install homebrew"
    else
        which -s brew
        if [[ $? != 0 ]] 
        then
            # Install Homebrew
            # https://github.com/mxcl/homebrew/wiki/installation
            /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
        else
            brew update
        fi
    fi
else
    # Other architectures
    echo "UNKNOWN architecture $ARCH"
fi
