#!/usr/bin/env bash
local colors="$TMUX_ROOT/plugins/gruvbox-next/lib/gbn-colors"
local color=""
local name=""
while read -r line; do
  $name="@${line%%:*}";
  $color="\"${line##*:}\"";
  printf "tmux set -g ${name} ${color}\n",$1,$2
  tmux set-option -g "${name}" "${color}"
done
tmux refresh-client

tmux display "Gruvbox-Next ready HASRUN: #{HASRUN}"
