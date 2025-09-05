#!/usr/bin/env bash
local colors="$TMUX_ROOT/plugins/gruvbox-next/lib/gbn-colors"
local color=""
local name=""
while read -r line; do
  $name="@${line%%:*}";
  $color="\"${line##*:}\"";
  tmux set-option -g "${name}" "${color}"
done
tmux refresh-client
#tmux source $TMUX_ROOT/tmux.conf

#tmux setenv HASRUN 1
tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
