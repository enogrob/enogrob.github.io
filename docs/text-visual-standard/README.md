# text-visual-standard

Canonical visual standard for **text-based explanatory components** used across:

- HOLOFLUX
- IOP
- COSMOS
- FACTORIES
- blogs
- ebooks
- READMEs
- technical documentation
- learning materials
- AI-native publications

It complements `mermaid-visual-standard`.

Use:

```text
mermaid-visual-standard
→ relationships, flows, architecture, sequence, topology

text-visual-standard
→ callouts, shoutouts, evidence, insights, warnings, definitions,
  questions, examples, references, takeaways, and other text visuals
```

---

## 1. What this skill does

This skill defines how visually emphasized text should communicate meaning.

It standardizes:

- block type;
- semantic color;
- functional emoji;
- emphasis;
- grouping;
- accessibility;
- cross-media rendering;
- epistemic distinctions.

Its core principle is:

> Visual treatment must express meaning, not decoration.

The canonical model is:

```text
BLOCK TYPE
→ editorial / structural role

COLOR
→ semantic / epistemic status

EMOJI
→ concept identity

EMPHASIS
→ force / importance / state

GROUPING
→ context / perspective / section
```

---

## 2. When to use it

Use `text-visual-standard` when prose is still the primary medium but a passage
benefits from visual distinction.

Typical use cases:

- highlight a key idea;
- separate evidence from a claim;
- expose an unresolved question;
- warn about an important limitation;
- define a term;
- show an example;
- create a practical “try this” block;
- call out a conceptual connection;
- summarize a takeaway;
- distinguish understanding from observation;
- mark context, intent, validation, contradiction, or accepted result.

Do **not** use a visual component when ordinary prose is clearer.

---

## 3. When not to use it

Do not use this skill for:

- flowcharts;
- sequence diagrams;
- state diagrams;
- architecture diagrams;
- dependency graphs;
- complex relationship maps;
- graph-like epistemic structures;
- timelines that are primarily diagrammatic.

Use `mermaid-visual-standard` for those.

---

## 4. Installation

Place the skill in your local skills directory.

Example:

```text
skills/
└── text-visual-standard/
    ├── SKILL.md
    └── README.md
```

Recommended structure:

```text
text-visual-standard/
├── SKILL.md
└── README.md
```

Rename the downloaded skill file to:

```text
SKILL.md
```

---

## 5. Basic usage

When working with an agent that supports skills, invoke or reference:

```text
$text-visual-standard
```

Example prompt:

```text
Apply $text-visual-standard to this post.

Use visual text components only where they improve comprehension.
Preserve the distinction between Claim, Evidence, Unknown,
Understanding, Warning, and ordinary prose.
```

Another example:

```text
Refactor the visual text elements in this article using
$text-visual-standard.

Do not modify Mermaid diagrams.
```

---

## 6. Use together with Mermaid

For a document containing both diagrams and prose:

```text
Apply:
- $mermaid-visual-standard to Mermaid diagrams
- $text-visual-standard to textual visual components
```

The two skills share the same semantic vocabulary.

```text
MERMAID                    TEXT VISUAL

Shape                   →  Block type
Color                   →  Color
Emoji                   →  Emoji
Edge                    →  Wording / emphasis
Subgraph                →  Grouping / section
Graph topology          →  Reading flow
```

---

## 7. Canonical semantic vocabulary

### Context

```text
📚 CONTEXT
```

Use for:

- framing;
- provenance;
- environment;
- assumptions;
- surrounding conditions.

Example:

```markdown
> **📚 Context**
>
> This experiment was executed against a synthetic dataset.
```

---

### Intent

```text
🧭 INTENT
```

Use for:

- purpose;
- direction;
- desired outcome;
- explicit orientation.

Example:

```markdown
> **🧭 Intent**
>
> Determine whether the runtime can preserve provenance across semantic boundaries.
```

---

### Observation

```text
👁 OBSERVATION
```

Use for something:

- observed;
- measured;
- reported;
- externally detected.

Example:

```markdown
> **👁 Observation**
>
> The second execution returned a different ordering while preserving the same values.
```

Observation is not automatically Evidence.

---

### Claim

```text
⚠️ CLAIM
```

Use for an assertion that may require support.

Example:

```markdown
> **⚠️ Claim**
>
> Intent can become a primary unit of software organization.
```

Do not visually imply that a claim is already accepted.

---

### Evidence

```text
🔎 EVIDENCE
```

Use for:

- measurements;
- corroboration;
- source-backed support;
- data that actually bears on a claim.

Example:

```markdown
> **🔎 Evidence**
>
> The benchmark reduced median latency in all three measured scenarios.
```

A source is not Evidence merely because it is cited.

---

### Hypothesis

```text
🧩 HYPOTHESIS
```

Use for a provisional:

- mechanism;
- explanation;
- interpretation.

Example:

```markdown
> **🧩 Hypothesis**
>
> The improvement may result from reducing repeated semantic normalization.
```

---

### Unknown

```text
❓ UNKNOWN
```

Use when information is genuinely unresolved.

Example:

```markdown
> **❓ Unknown**
>
> It is not yet known whether the behavior generalizes across providers.
```

An unknown is not an error.

---

### Open Question

```text
❓ OPEN QUESTION
```

Use for active inquiry.

Example:

```markdown
> **❓ Open Question**
>
> What must remain stable when intent crosses runtime boundaries?
```

---

### Contradiction

```text
⚠️ CONTRADICTION
```

Use when:

- sources conflict;
- observations conflict;
- support is incompatible;
- interpretations cannot currently be reconciled.

Example:

```markdown
> **⚠️ Contradiction**
>
> The documentation describes deterministic behavior, while the observed execution is variable.
```

Contradiction is not automatically falsification.

---

### Validation

```text
🧪 VALIDATION
```

Use for:

- verification;
- experimentation;
- acceptance checks;
- replication.

Example:

```markdown
> **🧪 Validation**
>
> Re-run the same scenario with preserved input, provider, model, and execution identity.
```

Operational success is not epistemic acceptance.

---

### Understanding

```text
🧠 UNDERSTANDING
```

Use for synthesized meaning.

Example:

```markdown
> **🧠 Understanding**
>
> Retrieval and understanding are distinct stages. Obtaining a source passage does
> not establish that its meaning was extracted correctly.
```

Do not use `Understanding` as a synonym for `Summary`.

---

### Projection

```text
📄 PROJECTION
```

Use when understanding becomes an explicit:

- artifact;
- representation;
- decision;
- specification;
- communicated form.

Example:

```markdown
> **📄 Projection**
>
> The accepted semantic model is projected into the runtime contract.
```

---

### Action

```text
▶️ ACTION
```

Use for an actual next step.

Example:

```markdown
> **▶️ Action**
>
> Add provenance validation before accepting the generated Claim.
```

---

### Checkpoint

```text
✅ CHECKPOINT
```

Use when defined acceptance conditions have actually been met.

Example:

```markdown
> **✅ Checkpoint**
>
> Provenance survives retrieval, extraction, validation, and projection.
```

---

## 8. Editorial components

These are useful but are not epistemic categories.

### Key Idea

```text
💡 KEY IDEA
```

Example:

```markdown
> **💡 Key Idea**
>
> Intent changes what the system considers the primary unit of organization.
```

---

### Insight

```text
🧠 INSIGHT
```

Example:

```markdown
> **🧠 Insight**
>
> The architecture becomes easier to reason about when meaning and execution are
> modeled separately.
```

Use `Understanding` instead when the content represents accepted epistemic synthesis.

---

### Warning

```text
⚠️ WARNING
```

Example:

```markdown
> **⚠️ Warning**
>
> Do not treat a successful API call as proof that the returned information is correct.
```

Do not use Warning just to mean “important”.

---

### Note

```text
📝 NOTE
```

Example:

```markdown
> **📝 Note**
>
> The GitHub renderer may display the block differently from the Jekyll site.
```

---

### Example

```text
📝 EXAMPLE
```

Example:

```markdown
> **📝 Example**
>
> A retrieved paragraph can be a Source passage without yet becoming Evidence.
```

An example does not prove a general claim.

---

### Definition

```text
📖 DEFINITION
```

Example:

```markdown
> **📖 Definition**
>
> **Projection** is the transformation of accepted understanding into an explicit form.
```

---

### Reference

```text
📚 REFERENCE
```

Example:

```markdown
> **📚 Reference**
>
> See the architectural decision record describing provenance preservation.
```

Reference does not automatically mean Evidence.

---

### Connection

```text
🔗 CONNECTION
```

Example:

```markdown
> **🔗 Connection**
>
> This distinction is also used by HOLOFLUX when separating Meaning from Explication.
```

---

### Try This

```text
▶️ TRY THIS
```

Example:

```markdown
> **▶️ Try This**
>
> Replace a generic summary block with explicit Claim, Evidence, and Unknown blocks.
```

---

### Takeaway

```text
📄 TAKEAWAY
```

Example:

```markdown
> **📄 Takeaway**
>
> Semantic visual consistency matters more than identical visual geometry.
```

---

## 9. Quick decision guide

Use this decision tree:

```text
Ordinary explanation?
→ keep prose

Framing?
→ Context

Purpose or orientation?
→ Intent

Observed state?
→ Observation

Assertion needing support?
→ Claim

Actual support for a claim?
→ Evidence

Provisional explanation?
→ Hypothesis

Unresolved information?
→ Unknown

Active inquiry?
→ Open Question

Conflict?
→ Contradiction

Verification step?
→ Validation

Synthesized accepted meaning?
→ Understanding

Interesting conceptual synthesis?
→ Insight

Explicit consequence?
→ Projection / Takeaway

Practical next step?
→ Action / Try This

Real risk?
→ Warning

Concrete illustration?
→ Example

Terminology?
→ Definition

Source orientation?
→ Reference

Conceptual relation?
→ Connection
```

---

## 10. Markdown

Portable baseline:

```markdown
> **🧠 Insight**
>
> Intent changes the unit of organization.
```

Evidence:

```markdown
> **🔎 Evidence**
>
> The benchmark shows a measurable change under the observed conditions.
```

Question:

```markdown
> **❓ Open Question**
>
> What remains unknown after this evidence?
```

Warning:

```markdown
> **⚠️ Warning**
>
> Do not conflate retrieval success with semantic correctness.
```

This format works even without CSS.

---

## 11. GitHub alerts

GitHub supports a small native alert vocabulary.

Example:

```markdown
> [!NOTE]
> Supporting information.

> [!TIP]
> Practical suggestion.

> [!IMPORTANT]
> Important constraint.

> [!WARNING]
> Significant risk.

> [!CAUTION]
> High-risk consequence.
```

Use them only when their semantics match.

Do not convert:

```text
Evidence
Unknown
Claim
Understanding
Hypothesis
```

into GitHub alert types merely to obtain a colored box.

Prefer:

```markdown
> **🔎 Evidence**
>
> ...
```

when GitHub has no equivalent semantic primitive.

---

## 12. Jekyll / FACTORIES

Recommended semantic syntax:

```text
:::context
...
:::

:::intent
...
:::

:::evidence
...
:::

:::unknown
...
:::

:::understanding
...
:::
```

The publication layer can convert these into HTML.

Example target:

```html
<aside class="semantic-block semantic-block--understanding">
  <header class="semantic-block__title">
    <span aria-hidden="true">🧠</span>
    <span>Understanding</span>
  </header>

  <div class="semantic-block__body">
    <p>Meaning emerges through synthesis.</p>
  </div>
</aside>
```

This lets FACTORIES control presentation without changing document semantics.

---

## 13. Suggested Jekyll implementation

A reusable include can be used:

{% raw %}
```liquid
{% include semantic-block.html
   type="understanding"
   title="Understanding"
   content="Meaning emerges through synthesis."
%}
```
{% endraw %}

Recommended mapping:

```text
semantic role
→ CSS class
→ canonical emoji
→ canonical palette
→ accessibility label
```

Do not repeat inline CSS in every post.

---

## 14. Semantic colors

Canonical palette shared with `mermaid-visual-standard`:

| Role | Background | Border |
|---|---|---|
| Context | `#D9EAF7` | `#7AA6C2` |
| Observation | `#DDF3E8` | `#78AA91` |
| Claim | `#FFF1BF` | `#C8A84E` |
| Evidence | `#E8DDF5` | `#A68BC4` |
| Hypothesis | `#F8DFC4` | `#C9986D` |
| Uncertainty | `#F6D6DD` | `#BF7C89` |
| Contradiction | `#F4CFC8` | `#B96B5D` |
| Understanding | `#DCEFD6` | `#86A878` |
| Projection | `#ECEBE8` | `#9C9992` |
| Orchestration | `#DDE3F4` | `#8998C8` |

Color communicates role.

It is not decorative variation.

---

## 15. Functional emoji vocabulary

Recommended shared vocabulary:

| Concept | Emoji |
|---|---|
| Source / Reference / Context | 📚 |
| Observation | 👁 |
| Intent / Orientation | 🧭 |
| Inquiry / Evidence | 🔎 |
| Validation / Experiment | 🧪 |
| Relation / Connection | 🔗 |
| Hypothesis / Mechanism | 🧩 |
| Claim / Warning / Contradiction | ⚠️ |
| Unknown / Question | ❓ |
| Understanding / Insight | 🧠 |
| HOLOFLUX | 🌀 |
| COSMOS / Orchestration | ⚙️ |
| Projection / Artifact | 📄 |
| Action | ▶️ |
| Accepted Result / Checkpoint | ✅ |

Rules:

```text
same concept
→ same emoji

emoji
→ functional identity

emoji
≠ decoration
```

Use at most one functional emoji in a component heading unless a strong semantic
reason requires otherwise.

---

## 16. Epistemic rules

Always preserve:

```text
Citation ≠ Source
Source ≠ Evidence
Evidence ≠ Claim
Claim ≠ Understanding
Operational success ≠ Epistemic acceptance
Retrieval ≠ Semantic extraction
Generated citation span ≠ Source passage
```

Also remember:

```text
Observation ≠ Evidence automatically
Example ≠ Proof
Summary ≠ Understanding
Reference ≠ Evidence automatically
Visual prominence ≠ Epistemic confidence
```

---

## 17. How to refactor an existing post

Prompt:

```text
Apply $text-visual-standard to this post.

Read the surrounding content before converting any paragraph.

Identify passages that genuinely represent:

- Context
- Intent
- Observation
- Claim
- Evidence
- Hypothesis
- Unknown
- Contradiction
- Validation
- Understanding
- Warning
- Example
- Definition
- Connection
- Takeaway

Keep ordinary prose as prose.

Do not create visual blocks only for decoration.

Preserve existing Mermaid diagrams unchanged.
```

---

## 18. Using both skills on a complete post

Recommended prompt:

```text
Apply the canonical visual standards to this post.

For Mermaid diagrams:
use $mermaid-visual-standard.

For textual visual components:
use $text-visual-standard.

Preserve one shared Semantic + Epistemic Visual Vocabulary across both.

Do not force text into diagrams and do not replace useful diagrams with callouts.
```

---

## 19. Applying it to a whole blog

Example:

```text
Review this Jekyll blog using $text-visual-standard.

Identify recurring visual text patterns and normalize them into a reusable
semantic component system.

Create or update:

- semantic block include
- CSS
- Markdown/Jekyll authoring conventions
- documentation

Do not rewrite article content unless required for semantic correctness.
```

---

## 20. Example: before and after

### Before

```markdown
It is important to remember that retrieval is not the same thing as understanding.

The system successfully retrieved the paragraph from the source.

We still do not know whether the extracted interpretation is correct.
```

### After

```markdown
> **💡 Key Idea**
>
> Retrieval is not the same thing as understanding.

> **👁 Observation**
>
> The system successfully retrieved the paragraph from the source.

> **❓ Unknown**
>
> It is not yet established whether the extracted interpretation is correct.
```

The improvement comes from semantic separation, not from having more boxes.

---

## 21. Visual density

Avoid:

```text
paragraph
callout
callout
callout
callout
paragraph
callout
```

Prefer:

```text
prose
prose
semantic transition
callout
prose
prose
diagram
prose
callout
```

A page full of boxes has no hierarchy.

---

## 22. Accessibility

Every component should remain understandable:

- without color;
- without emoji;
- without CSS;
- in grayscale;
- on narrow screens;
- with a screen reader.

Always include the semantic role in text.

Good:

```text
🧠 Understanding
```

Bad:

```text
🧠
```

Do not put essential meaning only in:

- color;
- emoji;
- border;
- hover state;
- CSS class.

---

## 23. Recommended file organization

For a Jekyll-based FACTORY:

```text
_includes/
└── semantic-block.html

_sass/
└── _semantic-blocks.scss

assets/
└── css/
    └── semantic-blocks.css

docs/
└── text-visual-standard.md
```

Skill:

```text
skills/
└── text-visual-standard/
    ├── SKILL.md
    └── README.md
```

---

## 24. Relationship to FACTORIES

The recommended architecture is:

```text
Meaning
   ↓
Semantic role
   ↓
Visual primitive
   ↓
Publication adapter
   ↓
Explicit form
```

Example:

```text
Evidence
   ↓
semantic block
   ↓
Jekyll adapter
   ↓
HTML + CSS
   ↓
blog page
```

This allows the same semantic source to be projected into:

- blog;
- ebook;
- README;
- documentation;
- deck;
- learning material.

The rendering changes.

The meaning does not.

---

## 25. Minimal prompt recipes

### Apply to one section

```text
Apply $text-visual-standard to this section.
Keep ordinary prose unless a visual block materially improves comprehension.
```

### Apply only epistemic blocks

```text
Apply $text-visual-standard only to epistemic content.
Identify Claim, Evidence, Hypothesis, Unknown, Contradiction,
Validation, and Understanding.
```

### Apply editorial blocks

```text
Apply $text-visual-standard to improve editorial scanning using
Key Idea, Insight, Warning, Example, Definition, Connection, and Takeaway.

Do not alter epistemic meaning.
```

### Normalize existing blocks

```text
Normalize all existing callouts in this post using $text-visual-standard.
Preserve content while correcting semantic role, emoji, color, and heading.
```

### Blog + Mermaid

```text
Apply $text-visual-standard and $mermaid-visual-standard to this post.
Use one shared semantic vocabulary across prose and diagrams.
```

---

## 26. Quality checklist

Before publishing, check:

```text
[ ] Does this block need to exist?
[ ] Is the semantic role correct?
[ ] Is ordinary prose still the default?
[ ] Is the heading explicit?
[ ] Is the emoji functional?
[ ] Is the color semantic?
[ ] Does it work without color?
[ ] Does it work without emoji?
[ ] Is Claim distinct from Evidence?
[ ] Is Source distinct from Evidence?
[ ] Is Understanding distinct from Summary?
[ ] Is Unknown distinct from Error?
[ ] Is Warning used only for actual risk?
[ ] Are examples clearly examples?
[ ] Are exact quotes and identifiers preserved?
[ ] Is visual density under control?
[ ] Is the block accessible?
[ ] Is the role consistent across the document?
```

---

## 27. Core rule

```text
ordinary prose
→ default

semantic distinction
→ visual component

relationship structure
→ Mermaid

visual emphasis
≠ epistemic certainty
```

The objective is not to make every part of a document visual.

The objective is to make **meaning easier to see**.


---

# Extended examples of use

## Example A — Apply to a single paragraph

Prompt:

```text
Apply $text-visual-standard to this paragraph.

Decide first whether it should remain ordinary prose.
If visual emphasis is justified, choose the correct semantic component.
Do not use Insight merely because the sentence is interesting.
```

---

## Example B — Apply only to callouts

Prompt:

```text
Review only the existing callouts in this post using $text-visual-standard.

For each callout:
- verify the semantic role;
- correct the heading if needed;
- normalize the functional emoji;
- normalize the semantic color;
- preserve the body text unless semantic correction is necessary.

Do not create new callouts.
```

---

## Example C — Add visual text components to a post

Prompt:

```text
Apply $text-visual-standard to this article.

Add visual text components only where they materially improve:
- scanning;
- conceptual separation;
- caution;
- epistemic clarity;
- reader action.

Keep ordinary prose as the default.
```

---

## Example D — Epistemic article

Prompt:

```text
Apply $text-visual-standard to this epistemic article.

Explicitly distinguish:
- 📚 Source / Context
- 👁 Observation
- ⚠️ Claim
- 🔎 Evidence
- 🧩 Hypothesis
- ❓ Unknown
- ⚠️ Contradiction
- 🧪 Validation
- 🧠 Understanding
- 📄 Projection

Do not allow one block to silently substitute for another.
```

---

## Example E — Tutorial

Prompt:

```text
Apply $text-visual-standard to this tutorial.

Prefer:
- 📖 Definition for terminology;
- 💡 Key Idea for concepts to retain;
- 📝 Example for concrete illustrations;
- ▶️ Try This for exercises;
- ⚠️ Warning for genuine risks;
- 📄 Takeaway for concise section conclusions.

Do not overuse callouts.
```

---

## Example F — README

Prompt:

```text
Apply $text-visual-standard to this README.

Keep it GitHub-compatible.

Use native GitHub alerts only when their meaning matches:
NOTE, TIP, IMPORTANT, WARNING, CAUTION.

For concepts such as Evidence, Understanding, Unknown, Claim, or Hypothesis,
prefer explicit semantic blockquotes rather than forcing them into GitHub alert types.
```

---

## Example G — Jekyll post

Prompt:

```text
Apply $text-visual-standard to this Jekyll post.

Use the site's semantic block implementation where available.
Map each role to:
- canonical heading;
- functional emoji;
- semantic CSS class;
- accessible HTML structure.

Do not add inline styles to the post.
```

---

## Example H — Use together with Mermaid

Prompt:

```text
Apply both visual standards to this post.

Use:
- $text-visual-standard for prose callouts and semantic text blocks;
- $mermaid-visual-standard for diagrams and relationship structures.

Keep semantic identity consistent across both.

Example:
🔎 Evidence in prose must mean the same thing as 🔎 Evidence in Mermaid.
```

---

## Example I — HOLOFLUX / IOP conceptual article

Prompt:

```text
Apply $text-visual-standard to this HOLOFLUX / IOP article.

Use:
- 🧭 Intent for orientation;
- ❓ Open Question for active inquiry;
- 🧠 Understanding for synthesized meaning;
- 📄 Projection for explicit form;
- 🔗 Connection for links between concepts;
- 🌀 only when HOLOFLUX itself is explicitly referenced.

Avoid decorative emoji.
```

---

## Example J — Refactor a visually noisy article

Prompt:

```text
Refactor this article using $text-visual-standard.

Reduce visual noise.

Remove callouts that do not materially improve comprehension.
Merge redundant blocks.
Return ordinary explanatory passages to prose.
Preserve only semantically justified visual components.
```

---

## Example K — Visual review without rewriting content

Prompt:

```text
Audit this document using $text-visual-standard.

Do not rewrite the content.

Return only:
- incorrect semantic roles;
- inconsistent emoji;
- inconsistent colors;
- overused callouts;
- accessibility problems;
- places where prose would be better;
- places where a missing semantic block would materially improve clarity.
```

---

## Example L — Complete publication workflow

Prompt:

```text
Prepare this post for publication.

Apply:
- $text-visual-standard to textual visual components;
- $mermaid-visual-standard to Mermaid diagrams.

Then verify:
- semantic consistency;
- epistemic integrity;
- visual density;
- accessibility;
- GitHub/Jekyll compatibility;
- consistent terminology.

Do not normalize all visual elements to identical dimensions.
```
