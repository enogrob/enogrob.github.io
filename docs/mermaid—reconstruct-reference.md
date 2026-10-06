# Reconstruct Mermaid Diagrams Using the Canonical Section 12 Reference

Reconstruct ALL Mermaid diagrams in this post using the global
`mermaid-visual-standard` skill.

This is a RECONSTRUCTION task, not a validation task.

Use the Mermaid diagram from section:

**12. From DSL to Mermaid**

as the mandatory GOLDEN REFERENCE for:

- rendered visual size;
- overall visual footprint;
- semantic density;
- number of visual levels;
- node scale;
- branching;
- convergence;
- colors;
- emojis;
- reading rhythm.

IMPORTANT:

Preserve semantic meaning, NOT the existing graph topology.

Process EVERY Mermaid block before stopping.

For each Mermaid diagram:

1. Read the surrounding section and determine what the diagram is meant to communicate.

2. Extract:
   - primary semantic movement;
   - supporting concepts;
   - lateral relations;
   - convergence points;
   - uncertainty / emergence / qualification.

3. Compare the diagram's expected rendered footprint with the diagram in
   "12. From DSL to Mermaid".

4. Rebuild it when it would render visibly smaller or larger.

5. Default to:
   - `flowchart TD`;
   - one dominant vertical semantic spine;
   - rounded nodes `([Label])`;
   - semantic pastel colors;
   - restrained semantic emojis;
   - short labels;
   - 0–2 lateral branches per level;
   - convergence back into the main flow;
   - solid arrows for primary movement;
   - dotted arrows for uncertain, emergent, unresolved, or qualified relations.

6. For MEDIUM diagrams, target approximately:
   - 8–10 nodes;
   - 4–6 visual levels;
   - similar node density to section 12;
   - similar visual footprint to section 12.

7. If a diagram is too small:
   - do NOT enlarge the wrapper;
   - reconstruct the semantic flow;
   - expose meaningful intermediate stages when they genuinely exist;
   - retain important supporting relations;
   - avoid over-compressing the concept.

8. If a diagram is too large:
   - do NOT enlarge the wrapper;
   - shorten labels;
   - collapse non-essential intermediate nodes;
   - merge closely related concepts;
   - reduce lateral branches;
   - remove decorative structure.

9. Use this semantic vocabulary consistently:

   📚 Source / Context
   👁 Observation
   🧭 Intent
   🔎 Inquiry / Evidence
   🧪 Validation / Replication
   🔗 Relation
   🧩 Mechanism / Structure
   ⚠️ Contradiction / Warning
   ❓ Unknown
   🧠 Understanding
   🌀 HOLOFLUX / Semantic Movement
   ⚙️ COSMOS / Orchestration / Capability
   📄 Projection / Artifact

10. Use stable pastel semantics:

   context: #dbeafe
   claim: #fef3c7
   inquiry: #ede9fe
   uncertainty: #fee2e2
   understanding: #dcfce7
   projection: #f3f4f6
   orchestration: #e0e7ff

11. Avoid:
   - hub-and-spoke layouts;
   - many equal branches;
   - unnecessary subgraphs;
   - long labels;
   - arbitrary shape variation;
   - automatic LR layouts;
   - forced equal pixel heights;
   - wrapper growth to compensate for graph complexity.

12. After rebuilding every Mermaid block, perform a document-wide consistency pass.

13. The final visual test is:
   when scrolling through the article, the Mermaid diagrams should have approximately the same visual presence as the diagram in section 12.

14. Report:
   - which diagrams changed;
   - which were already compliant;
   - what structural changes were made.

AUTHORING MODE:

Keep source fences as:

```mermaid

Do NOT convert to `mermaid!` during reconstruction.

Only after this reconstruction is complete should the
`jekyll-mermaid-publishing` step convert:

```mermaid
→
```mermaid!

without modifying diagram content.

Core rules:

Preserve semantic meaning, not existing topology.

Adapt the graph to the canonical footprint, not the footprint to the graph.
