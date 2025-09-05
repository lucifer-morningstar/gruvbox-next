#!/usr/bin/env bash
tmux run-shell "bash $LIB/gbn-colors.sh"
#tmux source $TMUX_ROOT/tmux.conf
#tmux set-option -g @Red "#fb4934"
#tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
