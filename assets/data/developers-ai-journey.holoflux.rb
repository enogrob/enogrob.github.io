holoflux "The Developer's AI Journey" do
  inquiry "How does AI transform software engineering?"

  # I. Arcana: meaning definitions
  arcana 0, "The Fool" do
    context "Open-minded AI exploration"
    light   "Curiosity and experimentation"
    shadow  "Naivety and blind trust"
    insight "Explore without surrendering judgment"
  end

  arcana 1, "The Magician" do
    context "AI code completion"
    light   "Augmented development"
    shadow  "Illusion of mastery"
    insight "Capability is not understanding"
  end

  arcana 2, "The High Priestess" do
    context "Prompts and context"
    light   "Deeper inquiry"
    shadow  "Superficial prompting"
    insight "Context changes understanding"
  end

  arcana 3, "The Empress" do
    context "Vibe coding"
    light   "Creative experimentation"
    shadow  "Unexamined code generation"
    insight "Prototypes are not products"
  end

  arcana 4, "The Emperor" do
    context "Structured AI workflows"
    light   "Repeatability and control"
    shadow  "Excessive rigidity"
    insight "Structure supports intent"
  end

  arcana 5, "The Hierophant" do
    context "Knowledge and reusable Skills"
    light   "Codified engineering expertise"
    shadow  "Dogmatic procedures"
    insight "Knowledge must remain revisable"
  end

  arcana 6, "The Lovers" do
    context "Human-AI collaboration"
    light   "Complementary capabilities"
    shadow  "Abdication of responsibility"
    insight "Delegation requires discernment"
  end

  arcana 7, "The Chariot" do
    context "Tools, MCP and execution"
    light   "Connected capabilities"
    shadow  "Uncontrolled execution"
    insight "Direction matters more than reach"
  end

  arcana 8, "Strength" do
    context "Agent autonomy and governance"
    light   "Responsible delegation"
    shadow  "Excessive autonomy"
    insight "Power requires restraint"
  end

  arcana 9, "The Hermit" do
    context "Independent technical inquiry"
    light   "Reflection and critical thinking"
    shadow  "Isolation and analysis paralysis"
    insight "Question outputs before accepting them"
  end

  arcana 10, "Wheel of Fortune" do
    context "Rapid evolution of AI technologies"
    light   "Adaptability"
    shadow  "Trend chasing"
    insight "Principles outlast tools"
  end

  arcana 11, "Justice" do
    context "Testing, verification and evaluation"
    light   "Evidence-based engineering"
    shadow  "False confidence in passing tests"
    insight "Success is not proof of correctness"
  end

  arcana 12, "The Hanged Man" do
    context "Perspective shift"
    light   "Reframing the problem"
    shadow  "Mistaking activity for progress"
    insight "Understand before building"
  end

  arcana 13, "Death" do
    context "Transformation of developer roles"
    light   "Renewal and adaptation"
    shadow  "Fear of obsolescence"
    insight "Let go of obsolete assumptions"
  end

  arcana 14, "Temperance" do
    context "Human-AI systems integration"
    light   "Balanced collaboration"
    shadow  "Misaligned automation"
    insight "Integrate without losing judgment"
  end

  arcana 15, "The Devil" do
    context "Dependency on AI-generated solutions"
    light   "Awareness of limitations"
    shadow  "Cognitive dependence"
    insight "Convenience must not replace thought"
  end

  arcana 16, "The Tower" do
    context "Failures in AI-assisted systems"
    light   "Architectural learning"
    shadow  "Fragile automation"
    insight "Failure exposes hidden assumptions"
  end

  arcana 17, "The Star" do
    context "New possibilities for AI engineering"
    light   "Renewed technological vision"
    shadow  "Technological idealization"
    insight "Vision requires grounded inquiry"
  end

  arcana 18, "The Moon" do
    context "Uncertainty and hallucinations"
    light   "Epistemic humility"
    shadow  "False certainty"
    insight "Distinguish claims from evidence"
  end

  arcana 19, "The Sun" do
    context "Engineering clarity and observability"
    light   "Transparency and verification"
    shadow  "Overconfidence"
    insight "Make understanding verifiable"
  end

  arcana 20, "Judgement" do
    context "AI-native architectural reorientation"
    light   "Intent-centered system design"
    shadow  "Reinvention without purpose"
    insight "Design around meaningful intent"
  end

  arcana 21, "The World" do
    context "Integrated AI-native engineering"
    light   "Coherent systems thinking"
    shadow  "Illusion of completion"
    insight "The whole remains open to revision"
  end

  # II. Paths: relationships, without redefining Arcana
  origin :the_fool, arcana: 0

  path :osiris do
    meaning :transformation
    traverse 1, 4, 7, 10, 13, 16, 19
    question "What must I reconsider?"
  end

  path :thoth_sopdet do
    meaning :awakening
    traverse 2, 5, 8, 11, 14, 17, 20
    question "What am I beginning to understand?"
  end

  path :horus do
    meaning :experience
    traverse 3, 6, 9, 12, 15, 18, 21
    question "How can I apply and validate it?"
  end

  interweave :osiris, :thoth_sopdet, :horus

  # III. Evolving understanding and return
  understanding :evolving do
    consider :light, :shadow, :insight
    integrate :experiences, :perspectives
    examine :contradictions
    preserve :evidence, :provenance, :uncertainty
    remain_open_to :revision
  end

  return from: 21, to: 0 do
    carry :evolving_understanding
    transform :perspective
    renew :inquiry
    question "What can now be seen differently?"
  end
end
