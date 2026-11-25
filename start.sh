#!/usr/bin/env bash
cd "$(dirname "$0")"
echo "UTEK Yutai Local Site  →  http://$(hostname -I 2>/dev/null | awk '{print $1}'):8080"
exec python3 -m http.server 8080 --bind 0.0.0.0
