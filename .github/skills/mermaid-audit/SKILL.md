---
name: mermaid-audit
description: Audit Mermaid diagrams in Jekyll blog posts against the Zoatworks Blog Factory visual contract. Use when reviewing old or new posts for Mermaid syntax, semantic styling, light/dark resilience, readability, and migration needs. Do not modify files unless explicitly asked.
argument-hint: "[Markdown file, post name, or scope such as all posts]"
---

# Mermaid Audit

Audit Mermaid diagrams against the shared Zoatworks visual contract.

Read first: `../_shared/mermaid-visual-contract.md`.

## Procedure

1. Locate every Mermaid block in scope.
2. Check front matter for `mermaid: true`.
3. Detect legacy plain `mermaid` fences.
4. Verify use of `mermaid!`.
5. Verify canonical Mermaid initialization.
6. Verify `useMaxWidth: true`, `nodeSpacing: 48`, `rankSpacing: 58`, `fontSize: 13px`, `background: #FFF8EF`, `primaryTextColor: #3E342C`, `lineColor: #6F7377`, `clusterBkg: #FBF4E7`, and `clusterBorder: #B8A17D`.
7. Inspect semantic `classDef` usage.
8. Check whether colors correspond to conceptual roles.
9. Check whether `subgraph` would improve natural grouping.
10. Review density, labels, edge crossings, and scanability.
11. Evaluate light/dark resilience without relying on external CSS.
12. Flag any migration that could change the diagram meaning.
13. When the post uses Jekyll Spaceship, verify the generated Mermaid output is an `<img class="mermaid">` and that `_includes/mermaid.html` applies `width: min(100%, 600px)`, `display: block`, and `height: auto`.

## Classification

Classify each diagram as:

- `COMPLIANT` — satisfies the current contract.
- `LEGACY` — valid Mermaid based on an earlier visual standard.
- `NEEDS-FIX` — missing required visual or integration elements.
- `INVALID` — likely syntactically or structurally broken.

## Output

Use this structure:

```text
Mermaid Visual Audit

Post: <file>
Diagrams: <count>

Diagram 1 — <classification>
✅ ...
⚠ ...
❌ ...

Summary
Compliant: N
Legacy: N
Needs fix: N
Invalid: N

Recommended action:
...
```

Be precise about what is missing. Do not modify files during an audit unless the user explicitly asks for fixes.
