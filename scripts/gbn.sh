#!/usr/bin/env bash

gbn_include=$CURRENT_DIR/lib
#tmux source $gbn_include/gbn-colors.conf
#tmux source $TMUX_ROOT/tmux.conf
[ ! -d $CURRENT_DIR/data  ] && mkdir $CURRENT_DIR/data
if [ -n $CURRENT_DIR/data/state ]; then
  # check the hashes for each file in the list and compare them 
  # against the ones listed in data/state. If missing or mismatched
  # then source the file, record timehe new hash for each as they load.
  OHASH=
  NHASH=
  for file in $CURRENT_DIR/lib/*; do
    #OHASH=$( grep -ei "$file" | awk '{print $2}' )
    #NHASH=sha256sum $file 
    tmux display -p "Checkin hashes for $file"
    done
fi
tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
