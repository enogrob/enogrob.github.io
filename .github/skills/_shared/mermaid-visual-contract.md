# Zoatworks Blog Mermaid Visual Contract

This file is the local consumer contract for Mermaid diagrams in the blog.

The authoritative source is the current `MERMAID-STANDARDS.md` maintained by the Zoatworks Blog Factory. When the Factory standard changes, synchronize this file rather than creating a competing visual standard.

## Jekyll integration

Posts containing Mermaid diagrams must include `mermaid: true` in front matter and use the `mermaid!` fence. Plain `mermaid` fences are considered legacy.

## Canonical initialization

Use the current resilient Mermaid configuration. The project intentionally uses a compact `13px` font because the diagrams include emoji and relatively long labels:

```text
%%{init: {'theme':'base','flowchart':{'useMaxWidth':true,'htmlLabels':true,'nodeSpacing':48,'rankSpacing':58,'curve':'basis'},'themeVariables':{'background':'#FFF8EF','primaryTextColor':'#3E342C','lineColor':'#6F7377','fontFamily':'Trebuchet MS, Verdana, sans-serif','fontSize':'13px','clusterBkg':'#FBF4E7','clusterBorder':'#B8A17D'}}}%%
```

Required visual tokens:

- `useMaxWidth: true`
- `nodeSpacing: 48`
- `rankSpacing: 58`
- `fontSize: 13px`
- `background: #FFF8EF`
- `primaryTextColor: #3E342C`
- `lineColor: #6F7377`
- `clusterBkg: #FBF4E7`
- `clusterBorder: #B8A17D`

## Light / Dark resilience

Mermaid diagrams must remain independently readable regardless of the surrounding site theme.

- Use an explicit internal background.
- Never depend on external light-mode or dark-mode CSS for node readability.
- Use dark text on the canonical pastel palette.
- Keep connectors and borders visible against the internal background.
- Keep cluster backgrounds and borders explicit rather than transparent.
- Use the same Mermaid source in both light and dark page modes.
- Do not create separate light and dark Mermaid sources.

## Rendered sizing

Jekyll Spaceship converts Mermaid fences into `<img class="mermaid">` elements using Mermaid.ink. The shared include at `_includes/mermaid.html` must therefore size the image itself, not only a nested SVG:

- `display: block`
- `width: min(100%, 600px)`
- `height: auto`
- centered with responsive behavior

Do not rely on `.mermaid svg` alone for rendered sizing.

## Semantic styling

Use `classDef` for meaningful visual roles. Colors must express semantics, not decoration.

Example palette:

```text
classDef pastelBlue fill:#D9EAF7,stroke:#7AA6C2,color:#3E342C,stroke-width:2px;
classDef pastelGreen fill:#DCEFD6,stroke:#86A878,color:#3E342C,stroke-width:2px;
classDef pastelOrange fill:#F8DFC4,stroke:#C9986D,color:#3E342C,stroke-width:2px;
classDef pastelPurple fill:#E8DDF5,stroke:#A68BC4,color:#3E342C,stroke-width:2px;
classDef pastelYellow fill:#FFF1BF,stroke:#C5A84A,color:#3E342C,stroke-width:2px;
classDef pastelRose fill:#F5D7DC,stroke:#BD858E,color:#3E342C,stroke-width:2px;
```

Guidelines:

- Prefer approximately 3–6 semantic colors when distinct roles justify them.
- Keep the same semantic role visually consistent inside the same diagram.
- Use `subgraph` when content naturally forms stages, boundaries, systems, or conceptual groups.
- Prefer more useful `subgraph` boundaries rather than fewer, as long as they reduce cognitive load and clarify conceptual layers.
- Functional icons may be used when they improve recognition; prefer semantic emoji/icons for roles such as orchestrator, specialist, tool, memory, evaluation, synthesis, and stage boundaries.
- Maximize semantic iconography and subgraph grouping whenever each addition meaningfully improves scanability or comprehension.
- Do not add decorative icons merely for visual noise.
- Preserve the original meaning when modernizing a diagram.

## Complexity

For larger diagrams:

- Reduce unnecessary labels.
- Prefer short, readable node text.
- Group natural stages with `subgraph`.
- Minimize edge crossings.
- Consider a compact summary before a detailed diagram when complexity becomes difficult to scan.
- Use collapsible presentation when supported and useful.

## Validation principle

AI skills help audit and transform Mermaid diagrams, but they are not the final compliance authority.

The final pass/fail decision belongs to the Blog Factory validation contract. If this local contract and the current Blog Factory disagree, the Factory wins.
