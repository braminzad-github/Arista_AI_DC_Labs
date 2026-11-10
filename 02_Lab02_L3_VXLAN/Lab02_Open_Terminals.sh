#!/bin/bash
set -e

if [[ -n "${TMUX:-}" ]]; then
  printf 'Run this script from an Ubuntu terminal outside tmux.\n'
  exit 1
fi

session="vxlan02"
lab_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

if tmux has-session -t "$session" 2>/dev/null; then
  tmux set -g mouse on
  tmux attach-session -t "$session"
  exit 0
fi

sudo -v

tmux new-session -d -s "$session" -n devices -c "$lab_dir" \
  'sudo docker exec -it clab-vxlan02-spine1 Cli'

for device in spine2 leaf1 leaf2; do
  tmux split-window -t "$session:devices" -c "$lab_dir" \
    "sudo docker exec -it clab-vxlan02-$device Cli"
  tmux select-layout -t "$session:devices" tiled
done

for device in host1 host2; do
  tmux split-window -t "$session:devices" -c "$lab_dir" \
    "sudo docker exec -it clab-vxlan02-$device sh"
  tmux select-layout -t "$session:devices" tiled
done

# The seventh pane is the Ubuntu shell for lab commands and captures.
tmux split-window -t "$session:devices" -c "$lab_dir" 'bash'
tmux select-layout -t "$session:devices" tiled
tmux set -g mouse on
tmux attach-session -t "$session"
