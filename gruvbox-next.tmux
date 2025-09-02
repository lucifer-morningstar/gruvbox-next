#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key T run-shell "$CURRENT_DIR/scripts/gbn.sh"

tmux source "$CURRENT_DIR/lib/gbn-colors.conf"
tmux run "$CURRENT_DIR/scripts/gbn.sh"
