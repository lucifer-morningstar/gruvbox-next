#!/usr/bin/env bash

LIB=$CURRENT_DIR/lib
#tmux source $LIB/gbn-colors.conf
#tmux source $TMUX_ROOT/tmux.conf
DATA="$CURRENT_DIR/data"
[ ! -d $DATA  ] && mkdir $CURRENT_DIR/data
if [ -n $DATA ]; then
  # check the hashes for each file in the list and compare them 
  # against the ones listed in data/state. If missing or mismatched
  # then source the file, record timehe new hash for each as they load.
  tmux display -p "Checkin hashes for $file"
  for file in $LIB/*; do
    in="$( grep -ei "$file" "$DATA" )"
    if [[ -z "${in}"  ]];then
      ohash="$( printf '%s %s\n',"$( sha256sum $file )","$file" )"
      echo "$ohash" >> "$DATA"
    else
      ohash="$in"
      nhash="$( printf '%s %s\n',"$( sha256sum $file )","$file" )"
    fi
    if [[ ! "${ohash}" = "${nhash}" ]]; then
      sed -i "/${file}/s/^.*$/${nhash}/" "$DATA"
      source "$file"
      tmux refresh-client
    fi
    done
fi
tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
