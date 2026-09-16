---
name: mermaid-upgrade
description: Upgrade legacy Mermaid diagrams in Jekyll blog posts to the current Zoatworks Blog Factory visual contract while preserving meaning.
argument-hint: "[Markdown file or post name]"
---

# Mermaid Upgrade

Modernize Mermaid diagrams using the Zoatworks Blog Factory visual contract.

Read first: `../_shared/mermaid-visual-contract.md`.

## Core rule

Preserve the intellectual and technical meaning of the original diagram.

## Procedure

1. Read the complete Mermaid block and enough surrounding prose to understand its purpose.
2. Audit the existing diagram before changing it.
3. Ensure front matter contains `mermaid: true`.
4. Convert legacy plain Mermaid fences to `mermaid!`.
5. Add or normalize the canonical Mermaid initialization.
6. Apply the canonical light/dark resilient theme.
7. Introduce semantic `classDef` styles.
8. Assign colors according to conceptual roles rather than visual variety.
9. Add `subgraph` only when natural boundaries or stages already exist in the meaning of the diagram.
10. Shorten labels only when the meaning remains unchanged.
11. Reduce unnecessary visual noise and edge crossings where practical.
12. Keep one Mermaid source for both light and dark page modes.
13. Do not introduce external CSS dependencies.
14. Re-audit the modified diagram against the shared contract.
15. Report exactly what changed.

## Do not

- Do not invent new technical relationships.
- Do not remove meaningful nodes simply to make the diagram smaller.
- Do not change sequence or direction unless the source text supports it.
- Do not create separate light-mode and dark-mode Mermaid versions.
- Do not replace meaningful terminology with generic labels.
- Do not add decorative emoji merely to satisfy an aesthetic goal.
- Do not modify prose outside the minimum integration changes required for Mermaid unless explicitly requested.

## Completion report

Use:

```text
Mermaid Upgrade

Post: <file>
Diagrams changed: N

Changes:
- ...

Contract check:
✅ Jekyll Mermaid integration
✅ canonical initialization
✅ light/dark resilience
✅ semantic styling
✅ meaning preserved

Remaining warnings:
- ...
```

If no upgrade is necessary, leave the file unchanged and report it as already compliant.
