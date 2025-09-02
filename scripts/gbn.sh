#!/usr/bin/env bash
gbn_include=$TMUX_PLUGIN_MANAGER_PATH/gruvbox-next/lib
tmux source $gbn_include/gbn-colors.conf
tmux source $TMUX_ROOT/tmux.conf
tmux display "Gruvbox-Next ready"
