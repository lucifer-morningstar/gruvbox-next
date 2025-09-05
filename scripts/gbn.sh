#!/usr/bin/env bash
# make new config
local lib="../lib"
local of="../main.tmux"
echo '#!/usr/bin/env bash' > "$of" 
cat $lib/gbn-colors.conf >> "$of"

tmux display "#[bg=#{@Dark0},fg=#{@Orange}]Gruvbox-Next ready HASRUN: #{HASRUN}"
