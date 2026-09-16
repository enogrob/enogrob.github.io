# enogrob.github.io

Personal technical blog built with Jekyll.

This repository includes AI-assisted tooling for maintaining consistent technical and visual quality across blog posts.

## Mermaid Visual Skills

The repository includes project-level GitHub Copilot Agent Skills under:

```text
.github/skills/
├── _shared/
│   └── mermaid-visual-contract.md
├── mermaid-audit/
│   └── SKILL.md
├── mermaid-upgrade/
│   └── SKILL.md
└── mermaid-preview-check/
    └── SKILL.md
```

These skills implement the Mermaid visual conventions defined by the Zoatworks Blog Factory.

The Blog Factory remains the authoritative source of the visual contract. The local shared contract in this repository is a synchronized consumer copy used by the skills.

## Available Skills

### `/mermaid-audit`

Audits Mermaid diagrams without modifying the post.

Example:

```text
/mermaid-audit _posts/2026-09-13-documenting-rails-repositories-with-ai.md
```

It checks:

- Jekyll Mermaid integration
- `mermaid!` fences
- canonical initialization
- semantic `classDef` usage
- light/dark resilience
- readability and grouping
- legacy diagrams
- content fidelity

Classifications:

```text
COMPLIANT
LEGACY
NEEDS-FIX
INVALID
```

### `/mermaid-upgrade`

Modernizes legacy Mermaid diagrams while preserving their original meaning.

Example:

```text
/mermaid-upgrade _posts/2025-11-20-example-post.md
```

It can:

- convert legacy Mermaid fences
- add canonical initialization
- apply the resilient visual theme
- introduce semantic classes
- improve grouping
- reduce visual noise
- preserve terminology and technical relationships

### `/mermaid-preview-check`

Performs final visual QA before publication.

Example:

```text
/mermaid-preview-check _posts/2026-09-16-example-post.md
```

It reviews:

- light/dark resilience
- contrast
- density
- label readability
- semantic colors
- cluster visibility
- Jekyll integration
- consistency with surrounding prose

Possible results:

```text
READY
READY WITH WARNINGS
NEEDS REVISION
```

## Recommended Workflow

For an existing post:

```text
/mermaid-audit <post>
        ↓
/mermaid-upgrade <post>
        ↓
/mermaid-preview-check <post>
        ↓
Blog Factory validation
        ↓
commit
```

For a new post:

```text
write / generate
        ↓
/mermaid-preview-check <post>
        ↓
Blog Factory validation
        ↓
publish
```

## Migrating Older Posts

Do not rewrite every historical Mermaid diagram automatically.

Recommended process:

1. Audit older posts.
2. Identify `LEGACY` and `NEEDS-FIX` diagrams.
3. Upgrade one post at a time.
4. Review the diff.
5. Run the preview check.
6. Validate through the Blog Factory.
7. Commit the migration.

## Visual Contract

Current resilient Mermaid values:

```text
background       #FFF8EF
primaryTextColor #3E342C
lineColor        #6F7377
clusterBkg       #FBF4E7
clusterBorder    #B8A17D
fontSize         17px
nodeSpacing      48
rankSpacing      58
useMaxWidth      true
```

Do not create separate light and dark Mermaid sources.

## Source of Truth

The Mermaid skills are operational helpers.

The authoritative visual standard and final validation rules belong to the Zoatworks Blog Factory.

If a local skill and the current Blog Factory contract disagree, update the local skill and shared contract to match the Factory.
