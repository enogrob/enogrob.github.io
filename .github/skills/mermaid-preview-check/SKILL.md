---
name: mermaid-preview-check
description: Perform a final visual QA review of Mermaid diagrams in Jekyll blog posts, focusing on light/dark resilience, contrast, density, grouping, semantic colors, and readability before publication.
argument-hint: "[Markdown file or post name]"
---

# Mermaid Preview Check

Perform final Mermaid visual QA before publication.

Read first: `../_shared/mermaid-visual-contract.md`.

Do not edit the post unless the user explicitly asks for corrections.

## Review dimensions

### 1. Light / Dark resilience

Verify:

- explicit `background: #FFF8EF`
- `primaryTextColor: #3E342C`
- `lineColor: #6F7377`
- explicit cluster background and border
- no dependency on page background
- no dependency on page-level light/dark CSS
- pastel node fills remain distinguishable from the internal background

### 2. Structural readability

Review:

- node count
- label length
- graph direction
- excessive edge crossings
- unclear branches
- large ungrouped areas
- whether `subgraph` would clarify natural conceptual boundaries

### 3. Semantic visual language

Verify that:

- colors represent conceptual roles
- the same role uses the same style
- unrelated roles are visually distinguishable
- styling is not random or merely decorative
- useful semantic icons/emoji are present where they improve recognition
- `subgraph` boundaries are used generously when they reduce cognitive load and clarify layers, stages, or systems
- iconography remains functional, not ornamental

### 4. Jekyll integration

Verify:

- `mermaid: true`
- `mermaid!` fence
- canonical initialization
- no legacy Mermaid integration remains

### 5. Content preservation

Compare the diagram with the surrounding prose.

Flag:

- missing concepts
- visual relationships that contradict the article
- sequence changes
- misleading grouping
- oversimplification that changes the intended meaning

## Rendering

If an existing Mermaid renderer or project preview workflow is available in the repository, it may be used for additional verification.

Do not install new dependencies or alter project configuration merely to run a preview unless explicitly requested.

If rendering is unavailable, perform a source-level visual review and clearly state that the review was static.

## Output

Return:

```text
Mermaid Preview Check

Post: <file>
Status: READY | READY WITH WARNINGS | NEEDS REVISION

Light/Dark resilience: PASS | WARN | FAIL
Readability: PASS | WARN | FAIL
Semantic styling: PASS | WARN | FAIL
Jekyll integration: PASS | WARN | FAIL
Content fidelity: PASS | WARN | FAIL

Findings:
- ...

Publication recommendation:
...
```

Do not declare `READY` when required contract elements are missing.
