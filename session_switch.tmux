#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function main {
  tmux bind-key c-s display-popup -E "$CURRENT_DIR/switch_session.sh"
  tmux bind-key s display-popup -E "$CURRENT_DIR/switch_session.sh"
  # tmux bind-key S display-popup -E "tmux list-sessions | fzf"
} 
main


