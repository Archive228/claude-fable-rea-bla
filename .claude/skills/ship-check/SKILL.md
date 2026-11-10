---
name: ship-check
description: The pre-release gate. Run it before any release to confirm the change is understood, verified, and hardened. Use as the last step before shipping.
---

# Ship check

Nothing ships until every line is true:

1. The change is understood - you can say what it does and why, in plain words.
2. `scripts/verify.sh` exits 0 - the verifier agent confirms it, with evidence, not a summary.
3. The diff was reviewed for scope creep - nothing shipped that the task did not need.
4. The build was hardened with the release-harden skill, and the `.bla-hardened/` output is what goes out.
5. Secrets are on the server, not in the client.

If any line is false, it is not done. Fix it and run again.
