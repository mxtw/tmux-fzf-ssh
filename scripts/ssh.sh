#!/usr/bin/env bash

SERVER=$(grep -P "^Host ([^*]+)$" "$HOME/.ssh/config" | sed 's/Host //' | fzf-tmux -p 55%,60%)

tmux new-window -n "$SERVER" "ssh $SERVER"
