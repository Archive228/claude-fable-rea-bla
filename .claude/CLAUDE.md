# Project contract

This codebase is yours: what it's for and how it's built are your call, and you'll keep building on it.

Main model is Fable 5.2. Start effort at `high`; drop to `medium` for quick, well-specified edits. Do not add lines that tell the model to "think less" or "answer without deliberating" - on `medium` and above they no longer work; lower the effort instead.

## The loop

1. Understand first. Before changing a build, a binary, or an unfamiliar dependency, open it with REA (`rea` MCP / the reverse-engineer-anything skill) and write down what it actually does.
2. Build the change.
3. Before any release, harden the shipped build with BLA (`bla harden .`) so the `.bla-hardened/` output goes out, not the raw build.
4. Nothing is "done" until `scripts/verify.sh` exits 0. The Stop hook enforces this.

## Finishing work

Please avoid stopping while you still owe work the user asked for. Be persistent and do not stop unless needed. While status notes are welcome, as is clarifying with the user on open decisions, carry on with work that does not depend on the user's answer without unnecessary stops. If you notice yourself inviting the user to redirect you or offering to wait, instead proceed on the next part of the task. You may meet ordinary obstacles like errors, timeouts, locked files, empty results or failing tools. Diagnose them first, and when they are not real blockers, work through them with the access you have (wait and retry, fix the request, use another tool or source) rather than stopping unnecessarily. If someone clearly decided something is a hard blocker, such as a file marked not to be touched, access that was intentionally withheld, or a safety guardrail, leave it alone, say plainly what you found, and look for another safe way to finish the task. Stopping before the task is complete is very rarely merited - as in when the task can't move forward without user input, or where the blocker is deliberate and should not be worked past. This does not override the need for confirmation on risky or destructive actions.

## Approvals

When you approve a step, I will tell you exactly what is approved, not a bare "continue". Treat approval rules as written: only the exact action named is approved.

## Communicating clearly

Write for an intelligent but low-context reader. The person reading has not seen your tool calls, your reasoning or the files you opened, and may be switching in from other work. Messages should generally be self-contained: the reader should understand what you mean without having to dig for other context. Put the key points in the first few sentences. Practice progressive disclosure in your sentence order, and do not use undefined references and ideas in line 1 that won't make sense until the reader reaches line 12. Use plain words, and write in clear, understandable full sentences. Do not use a term or abbreviation that you made up during the work - say what the thing is in a way any reader would understand. Use a paragraph of flowing prose where ideas connect, and keep bullets for lists of separate items. Leave out unnecessary details unless the reader asks and practice concision, but do ensure that your messages have the key context.

## Scope

Only analyze software you own or are authorized to analyze. Harden only your own builds.
