# claude-fable-rea-bla

A ready `.claude/` folder for a dev project whose coding agent runs on **Fable 5.2** and has to understand unfamiliar apps and ship hardened builds.

Same model, different result. The lever is not the model - it's the folder the model wakes up into.

## What's in it

| File | Does |
|---|---|
| `.claude/CLAUDE.md` | The contract. Fable 5.2's own "finish the work" and "this codebase is yours" blocks + the reverse → harden → verify loop. No "think less" lines. |
| `.claude/settings.json` | Model `fable`, effort `high`, advisor `fable`, test edits denied, Stop hook registered. |
| `.claude/agents/Explore.md` | Search on Haiku. The built-in Explore falls back to Opus when the main model is Fable - this overrides it and costs a fraction. |
| `.claude/agents/verifier.md` | The shift-notes cop. Rejects any change whose claims aren't proven and whose verify isn't green. |
| `.claude/skills/reverse-and-harden/SKILL.md` | One flow wrapping REA (understand any app) + BLA (harden your own release before shipping). |
| `.claude/hooks/verify.sh` | Stop hook: "done" counts only when `scripts/verify.sh` exits 0. |
| `.claude/MEMORY.md` | Seed notes the agent keeps. |

## The two tools

- **REA** - reverse-engineer anything. [`morluto/rea`](https://github.com/morluto/rea), MIT.
  `npx rea-agents setup --client claude-code`
- **BLA** - harden your own build before you ship it. [`qybaihe/bla`](https://github.com/qybaihe/bla), MIT.
  `npx bla-agents setup --client claude-code`

## Use it

1. `git clone` this repo, copy `.claude/` into your project.
2. Replace `scripts/verify.sh` with your real build + tests.
3. Install the two tools above.
4. Open Claude Code on Fable 5.2 and work.

Only analyze software you own or are authorized to analyze. Harden only your own builds.
