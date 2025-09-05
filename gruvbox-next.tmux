#!/bin/env bash
tmux setenv CURRENT_DIR "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#tmux source-file "$CURRENT_DIR/lib/gbn-colors.conf"

#tmux source-file "$CURRENT_DIR/lib/gbn-icons.conf"
#tmux source-file "$CURRENT_DIR/lib/gbn-formats.conf"
#tmux source-file "$CURRENT_DIR/lib/gbn-statusbar.conf"

#tmux run-shell "$CURRENT_DIR/scripts/gbn.sh"
tmux bind T run-shell "${CURRENT_DIR}/gbn.sh"
