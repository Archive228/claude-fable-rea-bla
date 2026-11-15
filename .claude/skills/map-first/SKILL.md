---
name: map-first
description: Map the whole project with graphify before reading files or changing anything. Use at the start of work on an unfamiliar or large codebase, or when you need to know how two parts connect.
---

# Map first (graphify)

`Graphify-Labs/graphify`, Apache-2.0. One knowledge graph of the project, so you walk the map instead of grepping raw files.

## 1. Build the map

Install once per machine (`install.sh` does this):

```bash
uv tool install graphifyy     # or: pipx install graphifyy
graphify install              # registers the /graphify skill for Claude Code
```

Then, from the project root:

```
/graphify .
```

It writes `graphify-out/`:

- `graph.html` - the architecture as one clickable map.
- `GRAPH_REPORT.md` - key concepts, surprising connections, suggested questions. Read this first.

Code is parsed locally with tree-sitter: no LLM, nothing leaves the machine. Docs, PDFs and images use the model for a semantic pass.

## 2. Ask the map, not the files

```bash
graphify query "what connects auth to the database?"   # scoped subgraph for a question
graphify path "A" "B"                                    # how two things connect
graphify explain "A"                                     # everything one thing touches
```

Every edge is tagged `EXTRACTED` (read from the source) or `INFERRED` (resolved by graphify). Treat `INFERRED` as a lead to check in the code, not a fact.

## 3. Keep it fresh

After edits run `/graphify . --update` (re-extracts only changed files). After `git pull` run `graphify update .`.

## Then

Built output goes to REA (`rea-triage`) to see what the release exposes, and to BLA (`release-harden`) before shipping. Map, then reverse, then harden.
