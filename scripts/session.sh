#!/bin/bash

SESSION=$(tmuxifier list-sessions -F \#S | gum filter --placeholder "Pick session...")

if [ -z "$SESSION" ]; then
  echo "No session selected"
  exit 1
fi

tmuxifier load-session $SESSION
