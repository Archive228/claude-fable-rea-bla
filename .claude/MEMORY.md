# Memory

- Main model Fable 5.2, effort starts at `high`. Drop to `medium` only for quick, specified edits.
- Explore and search run on Haiku (`.claude/agents/Explore.md`) - the built-in Explore goes to Opus when the main model is Fable, which is wasteful for plain search.
- Understand builds with REA before changing them; harden releases with BLA before shipping.
- "Done" means `scripts/verify.sh` exited 0 - the Stop hook enforces it.
