# claude-fable-rea-bla

A ready `.claude/` folder for a dev project whose coding agent runs on **Fable 5.2** and has to understand unfamiliar apps and ship hardened builds.

Same model, different result. The lever is not the model - it's the folder the model wakes up into.

## What's in it

| File | Does |
|---|---|
| `.claude/CLAUDE.md` | The contract. Fable 5.2's own "finish the work" and "this codebase is yours" blocks + the understand → harden → verify loop. No "think less" lines. |
| `.claude/settings.json` | Model `fable`, effort `high`, advisor `fable`, test edits denied, all three hooks registered. |
| `.claude/.mcp.json` | Registers the `rea` and `bla` MCP servers. |
| `.claude/agents/Explore.md` | Search on Haiku. Built-in Explore falls back to Opus on Fable - this overrides it. |
| `.claude/agents/planner.md` | Maps the work before any code is written. |
| `.claude/agents/reviewer.md` | Reads the finished diff for bugs and scope creep. |
| `.claude/agents/doc-reader.md` | Reads long logs and docs on Haiku, returns the conclusion. |
| `.claude/agents/verifier.md` | The shift-notes cop - rejects any unproven change. |
| `.claude/skills/reverse-and-harden/` | REA reads any app, BLA hardens the one you ship. |
| `.claude/skills/rea-triage/` | Point REA at an unknown target and get what it is. |
| `.claude/skills/release-harden/` | Harden your build with BLA right before shipping. |
| `.claude/skills/dep-audit/` | Vet a dependency before you add it. |
| `.claude/skills/ship-check/` | The pre-release gate. |
| `.claude/hooks/pre-tool-use.sh` | Guards destructive calls. |
| `.claude/hooks/post-tool-use.sh` | Formats and logs after an edit. |
| `.claude/hooks/verify.sh` | Stop hook: "done" only when `scripts/verify.sh` exits 0. |
| `.claude/MEMORY.md` | Seed notes the agent keeps. |
| `install.sh` | One-line bootstrap: installs both tools. |
| `run.sh` | The loop runner. |

## The two tools

- **REA** - reverse-engineer anything. [`morluto/rea`](https://github.com/morluto/rea), MIT.
- **BLA** - harden your own build before you ship. [`qybaihe/bla`](https://github.com/qybaihe/bla), MIT.

## Use it

    git clone https://github.com/Archive228/claude-fable-rea-bla
    cp -R claude-fable-rea-bla/.claude your-project/
    cd your-project && ../claude-fable-rea-bla/install.sh
    # set scripts/verify.sh to your real build + tests, then:
    claude --model fable

Only analyze software you own or are authorized to analyze. Harden only your own builds.
