#!/usr/bin/env bash
tmux display 'gbn.sh'
#tmux source $LIB/gbn-colors.conf
#tmux source $TMUX_ROOT/tmux.conf

#tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
