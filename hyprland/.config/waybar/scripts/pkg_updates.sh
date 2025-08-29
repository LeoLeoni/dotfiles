#!/bin/zsh

updates=$({ timeout 20 checkupdates 2>/dev/null || true; } | wc -l)

if [ "$updates" -eq 0 ]; then
    echo '{"text":" Fully Updated"}'
else
    echo "{\"text\":\" $updates updates\"}"
fi
