#!/usr/bin/env bash
# The loop runner: understand -> build -> harden -> verify.
set -euo pipefail
echo "1/2  verifying current state"
.claude/hooks/verify.sh
echo "2/2  green. ready to ship the .bla-hardened/ build."
