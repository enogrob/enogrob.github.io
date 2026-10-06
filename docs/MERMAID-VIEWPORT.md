# Canonical Mermaid Viewport — Factory-BLOG

## Problem solved

Mermaid graph geometry is content-dependent. Two diagrams with the same number
of nodes can render with very different intrinsic SVG dimensions.

Factory-BLOG therefore does **not** normalize visual size by rewriting each
diagram or assigning per-diagram widths.

Instead:

```text
semantic Mermaid graph
        ↓
Mermaid intrinsic SVG
        ↓
canonical visual viewport
        ↓
preserveAspectRatio="xMidYMid meet"
        ↓
consistent displayed footprint
```

## Default viewport

```text
width:  360px
height: 300px
```

Every normal blog Mermaid uses:

```html
<div class="mermaid-diagram mermaid-diagram--standard">
```

The CSS owns the viewport. JavaScript makes the generated SVG fit that viewport
without distortion.

## Separation of responsibilities

### `mermaid-visual-standard`

Controls graph design:

- semantic spine
- rounded nodes
- pastel semantics
- restrained semantic emojis
- concise labels
- limited branching
- semantic arrows

It must **not** assign per-diagram rendered widths.

### Factory-BLOG renderer

Controls display:

- viewport width
- viewport height
- centering
- fit
- aspect-ratio preservation
- responsive behavior

### `jekyll-mermaid-publishing`

Controls publication syntax only:

```text
mermaid → mermaid!
```

It must not resize individual diagrams.

## Exceptions

Use `mermaid-diagram--large` only when the content is intentionally a large
architecture/map and cannot be meaningfully represented in the normal viewport.

Use `mermaid-diagram--small` only for deliberately tiny supporting diagrams.

Ordinary post diagrams always use `mermaid-diagram--standard`.

## Layout integration

Add this include once in the post/page layout, ideally before `</head>` for the
stylesheet and before the closing body for the script, or simply:

```liquid
{% include mermaid-viewport.html %}
```

The include loads both assets and the script is deferred.

## Rule

> Never calibrate ordinary Mermaid width per diagram.

If a normal diagram looks different in size, first verify that it is inside
`.mermaid-diagram--standard` and that the viewport assets are loaded.


## v2 — clipping fix

The viewport no longer uses `overflow: hidden`.

All intermediate wrappers and SVG elements now use:

```css
overflow: visible;
```

and are normalized to fill the canonical viewport.

The SVG keeps:

```text
preserveAspectRatio="xMidYMid meet"
```

so the entire diagram is fitted proportionally rather than cropped.

If Mermaid does not emit a `viewBox`, the JavaScript derives one from `getBBox()`
with 12px of padding.


## v3 — overlap fix

The previous version allowed SVG overflow in order to avoid clipping. Some
diagrams therefore escaped the viewport and overlapped the following text.

v3 changes the model:

```text
reserved document-flow height
        +
padded SVG viewBox
        +
preserveAspectRatio="xMidYMid meet"
        =
no clipping and no overlap
```

Key changes:

- container reserves 300px with `min-height`;
- intermediate wrappers use `height: auto`, never `height: 100%`;
- SVG itself receives the canonical viewport height;
- JavaScript recalculates a padded viewBox from the rendered graph;
- overflow can safely be hidden because the padded viewBox includes labels.


## v4 — graph-area normalization

A fixed viewport alone does not guarantee equal perceived size. A tall narrow
graph and a compact graph can occupy very different fractions of the same
viewport.

v4 therefore normalizes the **graph bbox area coverage**.

For all `.mermaid-diagram--standard` diagrams on a page:

1. measure each rendered graph with `getBBox()`;
2. calculate how much of the canonical 360 × 300 viewport it can safely occupy;
3. derive one shared target coverage;
4. generate a centered viewBox for every diagram;
5. preserve aspect ratio with `xMidYMid meet`.

Result:

```text
same viewport
+
same approximate occupied graph area
=
much more consistent perceived Mermaid size
```

No per-diagram widths are required.
