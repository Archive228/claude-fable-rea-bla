# Memory

- Main model Fable 5.2, effort starts at `high`. Drop to `medium` only for quick, specified edits.
- Search and long reads run on Haiku (Explore.md, doc-reader.md) - the built-in Explore goes to Opus when the main model is Fable, which is wasteful.
- Flow: planner maps it, understand builds with REA before changing them, reviewer reads the diff, harden releases with BLA before shipping, ship-check is the last gate.
- "Done" means `scripts/verify.sh` exited 0 - the Stop hook enforces it.
- Keep real secrets on the server, not in the client.
