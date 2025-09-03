#!/usr/bin/env bash

gbn_include=$CURRENT_DIR/lib
#tmux source $gbn_include/gbn-colors.conf
#tmux source $TMUX_ROOT/tmux.conf
tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
