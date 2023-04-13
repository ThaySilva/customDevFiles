#!/usr/bin/env bash
## .bash_profile

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#### Aliases

alias dev="bash ~/Workspace/win_dev_cli/bin/dev"
alias ls='ls --color=always'; export ls