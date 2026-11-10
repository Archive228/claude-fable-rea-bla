#!/usr/bin/env bash
# Reflex: block the calls that should never run. Exit 2 stops the tool and feeds the reason back.
set -euo pipefail
payload="$(cat)"
if printf '%s' "$payload" | grep -Eq 'rm[[:space:]]+-rf|git[[:space:]]+push[[:space:]]+--force'; then
  echo "blocked: destructive command. do it by hand if you really mean it." >&2
  exit 2
fi
exit 0
