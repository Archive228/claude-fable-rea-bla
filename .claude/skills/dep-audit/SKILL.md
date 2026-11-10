---
name: dep-audit
description: Vet a third-party dependency before you add it - what it really does, what it pulls in, what it touches at runtime. Use before adding or upgrading a package.
---

# Vet a dependency before you add it

1. Read what it ships, not just its README: entry points, post-install scripts, network calls, filesystem access.
2. For an opaque or minified package, triage it with REA (see the rea-triage skill) and report what it actually does.
3. Check the transitive tree - what it pulls in is part of what you ship.
4. Decide: add it, pin it, or replace it. Write the one-line reason.

Only analyze software you are authorized to analyze.
