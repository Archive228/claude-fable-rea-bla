#!/usr/bin/env bash
# Stop hook: "done" only counts when the verify script is green.
# Exit 2 tells Claude Code the turn is not finished and feeds the reason back.
set -euo pipefail

if [ ! -x scripts/verify.sh ]; then
  echo "scripts/verify.sh missing or not executable - add it before claiming done." >&2
  exit 2
fi

if ! scripts/verify.sh; then
  echo "verify.sh failed - the change is not done. Fix it and run again." >&2
  exit 2
fi

exit 0
