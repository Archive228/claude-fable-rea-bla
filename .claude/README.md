# .claude/ - Fable 5.2 + REA + BLA

A ready folder for a dev project whose coding agent runs on Fable 5.2 and has to
understand unfamiliar apps and ship hardened builds.

What wakes the model up:

| File | Does |
|---|---|
| CLAUDE.md | The contract. Official Fable 5.2 blocks (finish-the-work, "this codebase is yours", communicate-clearly) + the reverse→harden→verify loop. No "think less" lines. |
| settings.json | Model `fable`, effort `high`, advisor `fable`, deny edits to tests, registers the Stop hook. |
| agents/Explore.md | Search on Haiku. Built-in Explore goes to Opus when the main model is Fable - this overrides it and costs a fraction. |
| agents/verifier.md | The shift-notes cop. Rejects any change whose claims aren't proven and whose verify isn't green. |
| skills/reverse-and-harden/SKILL.md | One command wrapping REA (understand any app) + BLA (harden your own release before shipping). |
| hooks/verify.sh | Stop hook: "done" counts only when scripts/verify.sh exits 0. |
| MEMORY.md | Seed notes the agent keeps. |

## Install the two tools (once per machine)

    npx rea-agents setup --client claude-code     # understand anything
    npx bla-agents setup --client claude-code      # harden your own builds

Then drop this .claude/ into your project, add your real scripts/verify.sh, and run.

Only analyze software you own or are authorized to analyze. Harden only your own builds.
