#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind T runs "$CURRENT_DIR/scripts/gbn.sh"
#tmux run "$CURRENT_DIR/scripts/gbn.sh"
