---
name: reverse-and-harden
description: Understand any app or build with REA, then ship your own build hardened with BLA. Use when the task is to figure out how an unfamiliar app, binary, or dependency works, or to prepare a release so a casual AI reverse-engineering pass does not read it trivially.
---

# Reverse, then harden

Two open-source tools, one loop. REA reads anything; BLA protects what you ship.

## 1. Understand (REA)

`morluto/rea`, MIT. Install once per machine:

```bash
npx rea-agents setup --client claude-code
```

This registers the `rea` MCP server in `~/.claude.json` and the skill in `~/.claude/skills/reverse-engineer-anything`. Then, from inside the app folder, ask the agent what the target is and let REA route it (it handles 50+ target kinds: JS/Electron trees, ASAR, APK/IPA, WASM, native binaries, packet captures).

Context note: the full REA catalog is ~170 tools. If it floods context, set `REA_MCP_INPUT_SCHEMA_PROFILE=compact` and trim families with `REA_MCP_TOOL_FAMILIES`.

Write down what the app actually does before you change anything.

## 2. Harden your own release (BLA)

`qybaihe/bla`, MIT. Before shipping YOUR build:

```bash
npx bla-agents harden .
```

It finds the build artifacts (`dist/`, `build/`, `.asar`, `.wasm`, native binaries), hardens them, verifies the hardened output still behaves the same, and writes `.bla-hardened/` plus `bla-harden-summary.json`. Ship the `.bla-hardened/` folder, not the raw build.

`--dry-run` writes nothing and reports what it would do. Run it first on a real project.

The catch worth knowing: `bla lint` refuses to finish while a one-line license/secret check is still in the source - it expects you (the agent) to rewrite those yourself first. And no client-side scheme is absolute: keep real secrets on the server.

## 3. Prove it

Nothing ships until `scripts/verify.sh` exits 0. The `verifier` agent runs the hardened build through it and rejects anything unproven.

## Scope

Only analyze software you own or are authorized to analyze. Harden only your own builds.
