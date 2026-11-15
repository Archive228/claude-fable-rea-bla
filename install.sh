#!/usr/bin/env bash
# One-line bootstrap: install all three tools, then open Claude Code on Fable 5.2.
set -euo pipefail
if command -v uv >/dev/null 2>&1; then uv tool install graphifyy
elif command -v pipx >/dev/null 2>&1; then pipx install graphifyy
else echo "install uv or pipx first, then: uv tool install graphifyy" >&2; exit 1; fi
graphify install
npx -y rea-agents@latest setup --client claude-code
npx -y bla-agents@latest setup --client claude-code
echo "done. copy .claude/ into your project, set scripts/verify.sh, run:  claude --model fable  - then type /graphify . once to map the project"
