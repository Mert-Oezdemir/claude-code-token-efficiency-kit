#!/usr/bin/env bash
# Sadece denetim yapar; indirme ve kurulum içermez.
set -u
echo "Claude Code Token Efficiency Kit — yerel ortam kontrolü"
for tool in claude uv python3 node npx headroom graphify; do
  if command -v "$tool" >/dev/null 2>&1; then
    printf "OK     %-10s %s\n" "$tool" "$(command -v "$tool")"
  else
    printf "YOK    %-10s\n" "$tool"
  fi
done
echo "Node.js >=22.13.0 ve Python gereksinimlerini kontrol edin."
