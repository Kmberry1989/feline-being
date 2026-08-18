#!/bin/zsh
cd "$(dirname "$0")"
port=4173
python3 -m http.server "$port" --bind 127.0.0.1 >/tmp/whisker-district-server.log 2>&1 &
server_pid=$!
trap 'kill "$server_pid" 2>/dev/null' EXIT INT TERM
sleep 1
open "http://127.0.0.1:$port"
wait "$server_pid"
