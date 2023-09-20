#!/bin/bash

#Requirements
# - aws zsh plugin
#- aws cli




awsdev="aws sso login --profile Development; asp Development"



DIR=$(gum choose "$awsdev" "development" "home" "edit..." "zshconf" "dotfiles")


