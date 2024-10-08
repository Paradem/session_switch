#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

function main {
  local sessions
  local session
  local sess_arr

  sessions=$(tmux list-sessions | fzf --exit-0 --reverse)
  IFS=$':' read -rd '' -a sess_arr <<<"$sessions"
  session=${sess_arr[0]}

  tmux switch-client -t "$session"
}
main
