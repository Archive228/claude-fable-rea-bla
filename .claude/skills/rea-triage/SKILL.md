---
name: rea-triage
description: Point REA at an unfamiliar app, binary, or dependency and get back what it actually is and does before you touch it. Use when you first meet a target you do not understand.
---

# Triage a target with REA

Only analyze software you own or are authorized to analyze.

1. From inside the target's folder, hand it to REA and let it route - it picks the right path for 50+ target kinds (JS/Electron trees, ASAR, APK/IPA, WASM, native binaries, packet captures).
2. Ask for the one-paragraph summary first, not a dump: what the thing is, how it is packaged, where its logic lives.
3. If context fills up, set `REA_MCP_INPUT_SCHEMA_PROFILE=compact` and narrow with `REA_MCP_TOOL_FAMILIES`.

Write down the answer before you change anything. `morluto/rea`, MIT - `npx rea-agents setup --client claude-code`.
