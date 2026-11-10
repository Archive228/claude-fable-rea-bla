#!/usr/bin/env bash
# One-line bootstrap: install both tools, then open Claude Code on Fable 5.2.
set -euo pipefail
npx -y rea-agents@latest setup --client claude-code
npx -y bla-agents@latest setup --client claude-code
echo "done. copy .claude/ into your project, set scripts/verify.sh, and run:  claude --model fable"
