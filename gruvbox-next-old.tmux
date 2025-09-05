#!/usr/bin/env bash
tmux setenv HASRUN 0
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind T run-shell "$CURRENT_DIR/scripts/gbn.sh"
[[ $(tmux showenv $HASRUN) -eq 0 ]] && tmux run "$CURRENT_DIR/scripts/gbn.sh"
