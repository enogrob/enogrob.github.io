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
9. Add `subgraph` when natural boundaries or stages exist, and prefer richer grouping whenever it improves scanability without bloating the diagram.
10. Prefer semantic emoji/icons that clarify roles and stages; use them aggressively when they improve recognition and meaning.
11. Shorten labels only when the meaning remains unchanged.
12. Reduce unnecessary visual noise and edge crossings where practical.
13. Keep one Mermaid source for both light and dark page modes.
14. Do not introduce external CSS dependencies.
15. Ensure `_includes/mermaid.html` sizes the generated `<img class="mermaid">` output responsively with a `600px` maximum width.
16. Re-audit the modified diagram and rendered sizing against the shared contract.
17. Report exactly what changed.

## Do not

- Do not invent new technical relationships.
- Do not remove meaningful nodes simply to make the diagram smaller.
- Do not change sequence or direction unless the source text supports it.
- Do not create separate light-mode and dark-mode Mermaid versions.
- Do not replace meaningful terminology with generic labels.
- Do not add decorative emoji merely to satisfy an aesthetic goal.
- Do not over-group or over-emoji a diagram to the point that it reduces readability.
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
