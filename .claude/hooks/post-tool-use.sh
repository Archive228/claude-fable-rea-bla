#!/usr/bin/env bash
# Reflex: after an edit, format what changed and log it.
set -euo pipefail
[ -x scripts/format.sh ] && scripts/format.sh >/dev/null 2>&1 || true
echo "$(date -u +%FT%TZ) tool ran" >> .claude/activity.log
exit 0
