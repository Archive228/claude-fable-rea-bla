---
name: release-harden
description: Harden your own build with BLA right before you ship it, so the protected output goes out instead of the raw build. Use at release time only.
---

# Harden a release with BLA

Harden only your own builds.

1. Run `npx bla-agents harden .` from the project root. It finds the build artifacts (`dist/`, `build/`, `.asar`, `.wasm`, native binaries), hardens them, checks the hardened output still behaves the same, and writes `.bla-hardened/` plus `bla-harden-summary.json`.
2. Run `--dry-run` first on a real project - it writes nothing and reports what it would do.
3. Ship the `.bla-hardened/` folder, not the raw build.

Two things worth knowing: `bla lint` refuses to finish while a one-line license or secret check is still in the source, so rewrite those first; and no client-side scheme is absolute - keep real secrets on the server. `qybaihe/bla`, MIT - `npx bla-agents setup --client claude-code`.
