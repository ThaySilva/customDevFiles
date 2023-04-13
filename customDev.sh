#!/bin/bash

# Create link from home dir to customDevfiles
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -W )"
customDevFiles="vimrc bashrc gitconfig gitignore"
packages="vim"

# ensure all required packages have been installed
for package in $packages; do
    if ! command -v $package >/dev/null 2>&1; then
        echo "You need to install $package"
        exit 1
    fi
done

# Copy files to home dir
for file in $customDevFiles; do
    src="$dir/$file"
    dst="$USERPROFILE\.$file"

    cp $src $dst
    echo "Copied $dst"
done

source ~/.bash_profile

# (optional) reload environment
read -p "Reload environment now? [y]es/[n]o " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    exec bash
fi